import 'package:nomad/data/models/questions/question.dart';

class InputQuestion extends Question {
  final String text;
  final String answer;
  final bool wide;
  final String? afterText;
  final String? postfix;

  const InputQuestion(
      {required this.text,
      required this.answer,
      this.wide = false,
      this.afterText,
      this.postfix});
}
