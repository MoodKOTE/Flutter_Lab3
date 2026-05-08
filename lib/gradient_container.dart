import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  void rollDice() {
    print('Кнопка нажата');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue, Colors.red],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-1.png', width: 300),
            TextButton(
              onPressed: rollDice,
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}