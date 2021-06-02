import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/progress_bar.dart';
import 'package:flutter_application_1/widgets/quiz.dart';
import 'package:flutter_application_1/widgets/result.dart';
import '../models/Question.dart';
import '../widgets/answer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xFFbd27ff)));
          _countResult++;
        } else {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xFF000000)));
        }

        _questionIndex += 1;
      });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тестирование')),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: const Color(0xff2a375a),
          // image: DecorationImage(
          //   image: AssetImage('assets/images/bg.jpg'),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Column(
          children: <Widget>[
            ProgressBar(
                icons: _icons,
                count: _questionIndex,
                total: data.questions.length),
            _questionIndex < data.questions.length
                ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangeAnswer: _onChangeAnswer,
                  )
                : Result(
                    count: _countResult,
                    total: data.questions.length,
                    onClearState: _clearState)
          ],
        ),
      ),
    );
  }
}
