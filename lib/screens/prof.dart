import 'package:flutter/material.dart';

class Prof extends StatefulWidget {
  const Prof({super.key});

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Account',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(221, 39, 38, 38),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 35,
                )),
          ],
        ),
        body: bodyP(context));
  }

  bodyP(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: scrollController,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02,
          vertical: MediaQuery.sizeOf(context).height * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _profileBar(
              context,
            ),
          ],
        ),
      ),
    ));
  }

  _profileBar(BuildContext context) {
    return Column(children: [
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
                color: Colors.yellow, borderRadius: BorderRadius.circular(16)),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(bottom: 10, left: 5, right: 15),
            height: 110,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(16)),
          )),
        ],
      )
    ]);
  }
}
