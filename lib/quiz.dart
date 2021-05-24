import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int listIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz(this.questions, this.answerQuestion, this.listIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[listIndex]['questions']),
        ...(questions[listIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
