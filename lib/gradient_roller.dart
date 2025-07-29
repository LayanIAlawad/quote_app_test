import 'package:flutter/material.dart';
import 'package:quotes_app/quotes_page.dart';

class GradientRoller extends StatelessWidget {
  const GradientRoller(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: QuotesPage(),
        ));
  }
}
