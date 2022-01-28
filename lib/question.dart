import "package:flutter/material.dart";
class Question extends StatelessWidget{
  final String  questionText;
  
 const Question(this.questionText,{Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(child: Text(questionText,style:  TextStyle(fontSize: 
     25,color: Colors.brown.shade300),
     textAlign: TextAlign.center,
     ),
     width: double.infinity, 
     alignment: Alignment.center,
     padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
     margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
     );
  } 
    
  
} 