import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int score;

  Result(this.score);

  String get resultPhase{
    String resultText;

    if(score<=10){
      resultText='you were nice';
    }else if(score>10){
      resultText='you are the best';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(resultPhase,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),);
  }
}
