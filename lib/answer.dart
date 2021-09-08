import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String title;

  Answer(this.selectHandler, this.title);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: double.maxFinite,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(title),
        onPressed: selectHandler,
      ),
    );
  }
}
