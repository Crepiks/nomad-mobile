import 'package:nomad/data/models/question.dart';

class InputImageQuestion extends Question {
  final String text;
  final String answer;
  final String imagePath;
  final bool wide;
  final String? afterText;
  final String? postfix;

  const InputImageQuestion(
      {required this.text,
      required this.answer,
      required this.imagePath,
      this.wide = false,
      this.afterText,
      this.postfix});
}
