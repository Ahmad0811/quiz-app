import 'package:flutter/material.dart';

import './quiz.dart';
import './resut.dart';

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
  var _listIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _listIndex++;
    });
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
      _listIndex = 0;
    });
  }

  final _questions = [
    {
      'questions': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'white', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3}
      ]
    },
    {
      'questions': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 9},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5}
      ]
    },
    {
      'questions': 'What\'s your favorite meal?',
      'answers': [
        {'text': 'Pasta', 'score': 3},
        {'text': 'Burger', 'score': 1},
        {'text': 'Pizza', 'score': 1},
        {'text': 'Steak', 'score': 5}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My First App',
            ),
          ),
          body: _listIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _listIndex)
              : Result(_reset, _totalScore)),
    );
  }
}
