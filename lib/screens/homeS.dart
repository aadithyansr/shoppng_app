import 'package:ecommc/screens/components/carou.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeS extends StatelessWidget {
  homeS({super.key});
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: CupertinoTextField(
                controller: textEditingController,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Expanded(child: samM()),
            )
          ],
        ),
      ),
    );
  }
}
