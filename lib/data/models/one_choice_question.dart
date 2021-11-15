import 'package:nomad/data/models/question.dart';

class OneChoiceQuestion extends Question {
  final String text;
  final bool correct;

  const OneChoiceQuestion({required this.text, this.correct = false});
}
