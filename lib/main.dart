import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(NewApp());

class NewApp extends StatefulWidget {
  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color",
      "answers": [
        {"text": "Black", "score": 2},
        {"text": "White", "score": 3},
        {"text": "Red", "score": 2},
        {"text": "Blue", "score": 5},
      ]
    },
    {
      "questionText": "What's your favorite animal",
      "answers": [
        {"text": "Dog", "score": 3},
        {"text": "Cat", "score": 5},
        {"text": "Pig", "score": 2},
        {"text": "Cow", "score": 1},
      ]
    },
    {
      "questionText": "What's your Best friend's name",
      "answers": [
        {"text": "John", "score": 1},
        {"text": "Great", "score": 6},
        {"text": "Mom", "score": 2},
        {"text": "Tom", "score": 5},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Answered");

    if (_questionIndex < _questions.length) {
      print("There are more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.pinkAccent
        ),
      title: "Simple App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
