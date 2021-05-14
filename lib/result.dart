import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'Fuck You Tony';
    if (resultScore <= 8) {
      resultText = 'You are bad!';
    } else if (resultScore <= 12) {
      resultText = 'You are ....strange';
    } else if (resultScore <= 16) {
      resultText = 'Pretty likeable';
    } else {
      resultText = 'You are awesome and innocent!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Text('Restart Quiz!'),
              onPressed: () {
                resetHandler();
              }),
        ],
      ),
    );
  }
}
