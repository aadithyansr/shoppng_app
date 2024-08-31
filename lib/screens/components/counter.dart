import 'package:flutter/material.dart';

class CartCounter extends StatelessWidget {
  final String count;

  const CartCounter({super.key, required this.count});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration:
          const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      child: Center(
        child: Text(
          count,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
