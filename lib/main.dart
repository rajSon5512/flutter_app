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

  var _questionIndex=0;

  void answerQuestion(){
    print('Hello world');

    setState(() {

       if(_questionIndex==2) {
         _questionIndex=0;
       }else{
         _questionIndex=_questionIndex+1;
       }

    });

    print(_questionIndex);

}

  @override
  Widget build(BuildContext context) {

    var questions=['what is your favorite color',
                    'what is your speed',
                    'hello world'
                  ];

    return MaterialApp(                      //class with custorecurot
      home: Scaffold(                        //scaffold provide basic architecture
        appBar: AppBar(
          title: Text('First Flutter Application'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      )
    );
  }
}