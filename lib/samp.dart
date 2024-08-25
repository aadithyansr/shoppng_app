import 'package:flutter/material.dart';

class Samp extends StatelessWidget {
  const Samp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(2),
            height: 100,
            child: const Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                  backgroundColor: Color.fromARGB(255, 158, 62, 62),
                  radius: 45,
                ),
                SizedBox(width: 15),
                Text(
                  'Leo Messi',
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
            height: 50,
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16)),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(bottom: 10, left: 15, right: 3),
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(16)),
              )),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(bottom: 10, left: 5, right: 15),
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
              )),
            ],
          )
        ]));
  }
}
