import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';

import './quiz.dart';
import './noResult.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  var _qts = [
    {
      'question': "What's your favorite Color?",
      'answer': [
        {'label': 'Red', 'value': 0},
        {'label': 'Green', 'value': 1},
        {'label': 'Blue', 'value': 0},
        {'label': 'Olive', 'value': 0},
      ],
    },
    {
      'question': "What's your favorite Animal?",
      'answer': [
        {'label': 'Dog', 'value': 1},
        {'label': 'Cat', 'value': 0},
      ],
    },
    {
      'question': "What's your favorite Name?",
      'answer': [
        {'label': 'Max', 'value': 0},
        {'label': 'Max 1', 'value': 1},
      ],
    },
  ];
  var _qtIndex = 0;
  var _finalScore = 0;
  void _checkAnswer(int score) {
    setState(() {
      _qtIndex = _qtIndex + 1;
      _finalScore += score;
    });
  }

  void _reset() {
    setState(() {
      _qtIndex = 0;
      _finalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My app bar')),
        body: _qtIndex < _qts.length
            ? Quiz(
                questionIndex: _qtIndex,
                questions: _qts,
                checkAnswer: _checkAnswer)
            : NoResult(
                reset: _reset,
                score: _finalScore
              ),
      ),
    );
  }
}
