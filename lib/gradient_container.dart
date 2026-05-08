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
            Image.asset('assets/images/dice-1.png', height: 200),
            SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}