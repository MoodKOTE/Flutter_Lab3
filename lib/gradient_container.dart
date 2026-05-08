import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.white, Colors.blue, Colors.red],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello world!',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
    );
  }
}