import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Изменил картинку');
  }

    @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 300),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.lime,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text("Roll Dice"),
        ), // TextButton
      ],
    ); // Column
  }
}
