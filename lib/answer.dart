import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      width: double.infinity,

      child: RaisedButton(
        elevation: 5.0,
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.pinkAccent,
        onPressed: selectHandler,

      ),

    );
  }
}
