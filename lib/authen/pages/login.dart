import 'package:ecommc/authen/pages/sign_up.dart';
import 'package:ecommc/authen/service/auth.dart';
import 'package:ecommc/screens/prof.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(76, 119, 102, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(76, 119, 102, 1),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(76, 119, 102, 1),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 20, left: 20, bottom: 2),
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Center(
                      child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: TextField(
                            controller: emailcontroller,
                            decoration: const InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 91, 89, 89))),
                          ))),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 20, left: 20, bottom: 3),
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Center(
                      child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: TextField(
                            controller: passcontroller,
                            decoration: const InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 91, 89, 89))),
                          ))),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: MyButtons(
                    onTap: () async {
                      final message = await AuthService().login(
                          email: emailcontroller.text,
                          password: passcontroller.text);

                      if (message!.contains('Success')) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Loader()));
                      }
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                    },
                    text: 'Log in')),
            Padding(
                padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => signup()));
                    },
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you have'nt any account? ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            'Create One',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 253, 251, 251),
                                fontWeight: FontWeight.bold),
                          )
                        ])))
          ],
        )));
  }
}

class MyButtons extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const MyButtons({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          alignment: Alignment.center,
          height: 60,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color.fromARGB(255, 51, 168, 215)),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
