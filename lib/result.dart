import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are a Good person";
    } else if (resultScore <= 12) {
      resultText = "You are okay for me";
    } else if (resultScore <= 16) {
      resultText = "You need to make friends with Good people";
    } else if (resultScore <= 20) {
      resultText = "I need to call a Doctor for you please";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, left: 10.0),
      child: Center(
          child: Column(
        children: <Widget>[

          // first element
          Text(
            resultPhrase,
            style: TextStyle(
                fontFamily: 'serif',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          //second element
          RaisedButton(
            child: Text("Go Back"),
            color: Colors.pink,
            textColor: Colors.white,
            elevation: 5.0,
            onPressed: resetHandler,
            )
        ],
      )),
    );
  }
}
