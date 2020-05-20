
import 'package:flutter/material.dart';

import 'package:first_app/questions.dart';
import './answer.dart';

 

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int _questionIndex;
  final Function answerQuestion;

  Quiz(this.questions,this._questionIndex,this.answerQuestion);

  

  @override
  Widget build(BuildContext context) {
    return Column(children: [
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['Answers'] as List<Map<String,Object>>)
                    .map((answer) {
                  return Answer(()=>{answerQuestion(answer['score'])}, answer['text']);
                }),
              ]);
            
  }
}