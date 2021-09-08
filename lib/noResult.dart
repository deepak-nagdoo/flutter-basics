import 'package:flutter/material.dart';
import './answer.dart';

class NoResult extends StatelessWidget {
  final VoidCallback? reset;
  final int? score;

  const NoResult({Key? key, this.reset, this.score}) : super(key: key);
  String get resultLabel {
  print(score);
    String resultText;
    if(score! < 1){
      resultText = 'May be try again';
    }else{
      resultText = 'It was fun!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Column(children: [
        Text(resultLabel,style: TextStyle(fontSize: 20),),
        Answer(reset!, 'Reset'),
      ]),
    );
  }
}
