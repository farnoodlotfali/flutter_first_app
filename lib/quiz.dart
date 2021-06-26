import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/cupertino.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List questions;
  final int index;
  Quiz(this.answerQuestion, this.questions, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[index]["questionText"]),
          ...questions[index]["answers"]
              .map((answer) =>
                  Answer(() => answerQuestion(answer["score"]), answer["text"]))
              .toList()
        ],
      ),
    );
  }
}
