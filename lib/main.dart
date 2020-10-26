import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}

class MyAppState extends State<MyApp>{

  var questionIndex=0;

  void answerQuestion(){
    print('Hello world');

    setState(() {

       if(questionIndex==2) {
         questionIndex=0;
       }else{
         questionIndex=questionIndex+1;
       }

    });

    print(questionIndex);

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
            Text(questions[questionIndex]),
            RaisedButton(onPressed: answerQuestion,child: Text('Answer 1'),),
            RaisedButton(onPressed: null,child: Text('Answer 2'),),
            RaisedButton(onPressed: null,child: Text('Answer 3'),),
          ],
        ),
      )
    );
  }
}