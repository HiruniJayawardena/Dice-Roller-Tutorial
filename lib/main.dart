import 'package:flutter/material.dart';
import 'package:basic/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 100, 94, 184),
          Color.fromARGB(255, 143, 69, 110),
          Color.fromARGB(255, 191, 241, 53),
        ]),
      ),
    ),
  );
}
