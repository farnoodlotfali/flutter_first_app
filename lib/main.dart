import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './question.dart';
import 'package:first_app/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // print("hi");
    _totalScore = _totalScore + score;
    setState(() {
      _index++;
    });
  }

  void restQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List _questions = const [
      {
        "questionText": "whats your favorite color?",
        "answers": [
          {"text": "red", "score": 30},
          {"text": "blue", "score": 20},
          {"text": "green", "score": 5}
        ]
      },
      {
        "questionText": "whats your favorite food?",
        "answers": [
          {"text": "eggs", "score": 30},
          {"text": "pasta", "score": 50},
          {"text": "rice", "score": 20},
          {"text": "tea", "score": 10}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: (Text("Hello")),
        ),
        body: _index < _questions.length
            ? Quiz(_answerQuestion, _questions, _index)
            : Result(_totalScore, restQuiz),
      ),
    );
  }
}
