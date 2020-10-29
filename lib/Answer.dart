import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandlar;

  Answer(this.selectHandlar);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('Answer 1'),
        color: Colors.blue,
        onPressed: selectHandlar,
      )
    );
  }
}
