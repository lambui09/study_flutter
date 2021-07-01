import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHander;
  final String answerText;
  Answer(this.selectHander, this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHander,
        child: Text(answerText),
      ),
    );
  }
}
