import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answerText;
  Answer(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => handler(),
        child: (Text(answerText)),
        style: ElevatedButton.styleFrom(
            primary: Colors.lightBlue, onPrimary: Colors.white),
      ),
    );
  }
}
