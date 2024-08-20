import 'package:ecommc/screens/components/body.dart';
import 'package:flutter/material.dart';

class homeS extends StatelessWidget {
  const homeS({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey, appBar: AppBar(), body: body()));
  }
}
