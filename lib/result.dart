import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'YOu good boi rahuls friend';
    if (totalScore > 10) {
      resultText = 'go nd live with ur fav persion ,, it hurts me';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
          FlatButton(
            child: Text('Reset quiz if u want',style: TextStyle(backgroundColor: Colors.black,fontSize: 29),),
            textColor: Colors.blue,
            onPressed: () => resetQuiz(),
          )
        ],
      ),
    );
  }
}
