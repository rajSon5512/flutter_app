import 'package:flutter/material.dart';
import 'package:flutter_app/Answer.dart';
import 'package:flutter_app/Question.dart';
import 'package:flutter_app/Quiz.dart';
import 'package:flutter_app/Result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{

  final questions=const[
    {'questiontext':'What is your favorite color?',
      'answer':[
        {'text':'red','score':10},
        {'text':'pink','score':23},
        {'text':'green','score':13}]},
    {'questiontext':'Most favorite thing to eat?',
      'answer': [
        {'text':'panipuri','score':16},
        {'text':'bhelpuri','score':10},
        {'text':'pavbhaji','score':23}]},
    {'questiontext': 'What is your favorite activity?',
      'answer': [
        {'text': 'run', 'score': 5},
        {'text': 'fly', 'score': 32},
        {'text': 'kiss', 'score': 10}
        ],}
    ];

  var _questionIndex=0;
  var _finalscore=0;

  void answerQuestion(int score){
    print('Hello world');

    _finalscore += score;

    setState(() {

      if(_questionIndex<=questions.length){
        _questionIndex=_questionIndex+1;
      }

    });

    print(_questionIndex);

}

  @override
  Widget build(BuildContext context) {

    return MaterialApp(                      //class with custorecurot
      home: Scaffold(                        //scaffold provide basic architecture
        appBar: AppBar(
          title: Text('First Flutter Application'),
        ),
        body:_questionIndex<=questions.length-1?
            Quiz(answerQuestion,questions,_questionIndex)
            :Result(_finalscore),
      )
    );
  }
}