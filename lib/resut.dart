import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int result;

  Result(this.reset, this.result);

  String get resultPhase {
    var resultText;
    if (result <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (result <= 12) {
      resultText = 'Pretty likeable!';
    } else if (result <= 16) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("Try again"),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
