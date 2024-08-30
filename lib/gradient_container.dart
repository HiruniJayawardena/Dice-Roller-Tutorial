import 'package:basic/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:basic/styled_text.dart';

//Alignment?
//startAlignment; //This says that the variable can be null or type Alignment
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors,
      {super.key}); //constructor for parent class with named argument

  // const GradientContainer.purple({super.key})
  //     : color1 = Colors.deepPurpleAccent,
  //       color2 = Colors.indigo;     <=we can add multiple constors
  final List<Color> colors;

  @override
  Widget build(context) {
    //startAlignment = Alignment.topLeft;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors[0], colors[1], colors[2]],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
