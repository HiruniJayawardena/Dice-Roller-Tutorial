import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random(); //doesn't need to create separate object every time

//this is globally available data container

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-5.png'; <=old way
  var currentDiceRoll = 1;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1; <=old way
    setState(() {
      // activeDiceImage = 'assets/images/dice-$diceRoll.png'; <=old way
      // currentDiceRoll = Random().nextInt(6) + 1; <= remove the Random() because it always creates new objects and it consumes memory
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });

    print('change image.....');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // activeDiceImage,
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ), <=this is how we can add padding

            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
