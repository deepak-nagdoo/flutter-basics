import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function checkAnswer;

  const Quiz({Key? key, required this.questionIndex, required this.questions, required this.checkAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Column(
      children: <Widget>[
        Question(question: questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>checkAnswer(answer["value"]), answer['label'] as String);
        }).toList(),
      ],
    );
  }
}
