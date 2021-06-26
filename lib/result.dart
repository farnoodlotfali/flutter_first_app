import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

  Result(this.totalScore, this.reset);

  String get resultprice {
    String text;
    if (totalScore > 40) {
      text = 'you are good';
    } else {
      text = 'you are bad';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultprice,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: () => reset(), child: Text("restart quiz"))
          ],
        ),
      ),
    );
  }
}
