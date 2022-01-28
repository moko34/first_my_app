import "package:flutter/material.dart";
class Result extends StatelessWidget{
  final int totalScore;
  final VoidCallback resetGame;
  const Result(this.totalScore,this.resetGame,{Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    var displayText="The game has Ended";
    if (totalScore <= 8){
      displayText="You're a great person";
    }else if(totalScore >8 && totalScore <=12){
        displayText="You're kinda cool";
    }else if(totalScore >12 && totalScore<=16){
      displayText="You're weird";
    }

    return Center(child:Column(children: [
      Text(
            displayText,
            style: const TextStyle(fontSize: 28),
          ),
          ElevatedButton(onPressed: resetGame, child:const Text("Reset Game"))
    ],) ,);
    
  }
}