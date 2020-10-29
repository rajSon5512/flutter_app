import 'package:flutter/material.dart';
import 'package:flutter_app/Answer.dart';
import 'package:flutter_app/Question.dart';

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

  final questions=const[{'questiontext':'What is your favorite color?', 'answer':['red','blue','green']},
    {'questiontext':'Most favorite thing to eat?', 'answer':['panipuri','bhelpuri','pavbhaji']},
    {'questiontext':'What is your favorite activity?', 'answer':['run','read','music']},
  ];

  var _questionIndex=0;

  void answerQuestion(){
    print('Hello world');

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
        body:_questionIndex<=questions.length-1?Column(
          children: [
            Question(questions[_questionIndex]['questiontext']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer){
                return Answer(answerQuestion,answer);
            }).toList(),
          ],
        ):Center(child: Text('You did it.'),),
      )
    );
  }
}