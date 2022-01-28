import 'package:flutter/material.dart';
import "quiz.dart";
import "result.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }  
    }

 class MyAppState extends State<MyApp>{
   var questionIndex=0;
    int _totalScore = 0;
   void scoreChangeHandler(int score){
     setState(() {
        _totalScore += score;
     });
     
   }

   void resetGame(){
     setState(() {
        _totalScore = 0;
      questionIndex = 0;
     
     });
      
     

   }
   final _questions=  [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Maxi', 'score': 1},
        {'text': 'Maxim', 'score': 1},
        {'text': 'Maximi', 'score': 1},
      ],
    },
  ];

  void _answerQuestion (){
    setState(() {
     questionIndex+=1; 
    });
  }

   @override
  Widget build(BuildContext context) {   
   return  MaterialApp(home: Scaffold(appBar: AppBar(title: const Text("MY FLUTTER APP"),),
       body: questionIndex<_questions.length?Quiz(_questions[questionIndex]["answers"]
        as  List<Map<String,Object>>,_answerQuestion,_questions[questionIndex]["questionText"] as String,scoreChangeHandler):Result(_totalScore,resetGame),
         ),
         );
  }

    }
