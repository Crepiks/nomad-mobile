import 'package:nomad/data/models/questions/question.dart';

class InputQuestion extends Question {
  final bool wide;
  final String? afterText;
  final String? postfix;

  const InputQuestion(
      {required text,
      required answer,
      this.wide = false,
      this.afterText,
      this.postfix})
      : super(text: text, answer: answer);
}
