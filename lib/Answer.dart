import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandlar;
  final String answer;

  Answer(this.selectHandlar,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer,style: TextStyle(fontSize: 22),),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandlar,
      )
    );
  }
}
