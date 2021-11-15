import 'package:nomad/data/models/question.dart';

class TrueFalseQuestion extends Question {
  final String text;
  final bool correct;

  const TrueFalseQuestion({required this.text, required this.correct});
}
