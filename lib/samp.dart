import 'package:flutter/material.dart';

class weeg extends StatefulWidget {
  const weeg({super.key});

  @override
  State<weeg> createState() => _weegState();
}

class _weegState extends State<weeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12,
                mainAxisExtent: 330),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                  width: 150, decoration: BoxDecoration(color: Colors.red));
            }));
  }
}
