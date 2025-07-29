import 'package:flutter/material.dart';
import 'package:quotes_app/gradient_roller.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientRoller([
          const Color.fromARGB(255, 244, 202, 216),
          const Color.fromARGB(255, 245, 146, 179)
        ]),
      ),
    ),
  );
}
