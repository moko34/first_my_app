import 'package:flutter/material.dart';
import "question.dart";
import "answer.dart";
class Quiz extends StatelessWidget{
  final String questionText;
  final List<Map<String,Object>> answers;
  final VoidCallback questionIsAnswered;
  final Function scoreChangeHandler;
  const Quiz(this.answers,this.questionIsAnswered,this.questionText,this.scoreChangeHandler,{Key? key}):super(key: key);

@override
  Widget build(BuildContext context) {
    return Column( children:  [
         Question(questionText),
          ...(answers )
          .map((answer) =>Answer(answer["text"] as String,()=>{
          questionIsAnswered(),
          scoreChangeHandler(answer["score"] as int)}
          )).toList(),
          
    ]);
  }

}