import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    _questionIndex = 0;
    _totalScore = 0;
    setState(() {
      print('back on fire');
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_questionIndex);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("ANser is here");
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s is your fav color',
        'Answers': [
          {'text': 'Blue', 'score': 3},
          {'text': 'BLack', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'white', 'score': 1},
        ]
      },
      {
        'questionText': 'What\'s is your fav animal',
        'Answers': [
          {'text': 'Platypus', 'score': 3},
          {'text': 'Snake', 'score': 10},
          {'text': 'Lion', 'score': 5},
          {'text': 'BUdgie', 'score': 1},
        ]
      },
      {
        'questionText': 'WHo\'s your fav friend',
        'Answers': [
          {'text': 'Rahul', 'score': -100},
          {'text': 'Subodh', 'score': 1000},
          {'text': 'Suryansh', 'score': 1000},
          {'text': 'sorab', 'score': 500},
          {'text': 'Atpug', 'score': 1000},
          {'text': 'V-shit', 'score': 2000},
        ]
      },
    ];

    return MaterialApp(
      theme: ThemeData(
          bannerTheme:
              MaterialBannerThemeData(backgroundColor: Colors.blueGrey)),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My FIrst APp he bhaya'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(questions, _questionIndex, _answerQuestion)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
