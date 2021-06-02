import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(title: 'Кем хочешь стать?', answers: [
      {'answer': '134', 'isCorrect': 1},
      {'answer': '134'},
      {'answer': '134'},
      {'answer': '134'},
    ]),
    Question(title: 'Кем хочешь стать?2', answers: [
      {'answer': '1341', 'isCorrect': 1},
      {'answer': '134'},
      {'answer': '134'},
      {'answer': '134'},
    ]),
    Question(title: 'Кем хочешь стать?3', answers: [
      {'answer': '13411', 'isCorrect': 1},
      {'answer': '134'},
      {'answer': '134'},
      {'answer': '134'},
    ]),
    Question(title: 'Кем хочешь стать?4', answers: [
      {'answer': '13411', 'isCorrect': 1},
      {'answer': '134'},
      {'answer': '134'},
      {'answer': '134'},
    ]),
    Question(title: 'Кем хочешь стать?5', answers: [
      {'answer': '13411', 'isCorrect': 1},
      {'answer': '134'},
      {'answer': '134'},
      {'answer': '134'},
    ]),
    Question(title: 'Кем хочешь стать?6', answers: [
      {'answer': '13411', 'isCorrect': 1},
      {'answer': '134'},
      {'answer': '134'},
      {'answer': '134'},
    ]),
  ];
  List<Question> get questions => [..._data];
}
