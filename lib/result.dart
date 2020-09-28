import 'package:flutter/material.dart';
import 'dart:io';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;
  Result(this.totalScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'YOUR SCORE IS',
          style: TextStyle(fontSize: 28),
        ),
        Container(
          margin: EdgeInsets.all(40),
          child: Text(
            '$totalScore',
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
        ),
        FlatButton(
          color: Colors.black,
          textColor: Colors.white,
          child: Text(
            'Restart Quiz!',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: resetHandler,
        ),
        FlatButton(
          padding: EdgeInsets.all(20),
          child: Text(
            'Quit',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => exit(0),
        )
      ],
    );
  }
}
