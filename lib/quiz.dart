import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';
import 'package:flutter/foundation.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answers;
  final int questionIndex;
  Quiz(
      {required this.questions,
      required this.answers,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'].toString()),
        for (var answer
            in (questions[questionIndex]['answers'] as List<String>))
          Answer(answers, answer)
      ],
    );
  }
}
