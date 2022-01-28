import 'package:flutter/material.dart';
class Answer extends StatelessWidget{
  final String answer;
  
  final VoidCallback answerIsPressed;
  const Answer(this.answer, this.answerIsPressed,{Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: answerIsPressed, child: Text(answer,style: 
    const TextStyle(color:  Colors.white),),
    style: ButtonStyle(
    backgroundColor:MaterialStateColor.resolveWith((states) =>Colors.brown.shade300),
    fixedSize: MaterialStateProperty.resolveWith((states) => const Size.fromWidth(120)),
    ));
  }
}