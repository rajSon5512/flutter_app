import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestionFun;
  final List<Map<String,Object>> questions;
  final int questionindex;

  Quiz(this.answerQuestionFun,this.questions,this.questionindex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionindex]['questiontext']),
        ...(questions[questionindex]['answer'] as List<String>).map((answer){
          return Answer(answerQuestionFun,answer);
        }).toList(),
      ],
    );
  }
}
