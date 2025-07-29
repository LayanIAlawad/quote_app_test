import 'dart:collection';
import 'dart:math';
import 'package:flutter/material.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key});
  @override
  State<QuotesPage> createState() {
    return _QuotesPageState();
  }
}

class _QuotesPageState extends State<QuotesPage> {
  List<String> quotes = [
    " Believe in yourself ",
    " You are stronger than you think ",
    " Every day is a second chance "
  ];
  String currentQuote = " Believe in yourself ";

  void changeQuote() {
    var random = Random();
    int index = random.nextInt(quotes.length);

    setState(() {
      currentQuote = quotes[index];
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          currentQuote,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35, color: Colors.blueAccent),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: changeQuote,
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: TextStyle(
                  fontSize: 28,
                )),
            child: Text("Give me the quote"))
      ],
    );
  }
}
