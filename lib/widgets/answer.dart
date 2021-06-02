import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;
  const Answer(
      {Key? key,
      required this.title,
      required this.onChangeAnswer,
      required this.isCorrect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(colors: [
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ]),
        ),
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            )),
      ),
    );
  }
}
