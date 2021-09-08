import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(20),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
