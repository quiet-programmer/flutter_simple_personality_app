import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {

  int _maxMargin = 2;

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(_maxMargin * 5.0),
      child: Center(
          child: Text(
            questionText,
            style: TextStyle(
              fontSize: 28.0,
            ),
          )
      ),
    );
  }
}
