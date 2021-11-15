import 'package:nomad/data/models/question.dart';

class MatchQuestion extends Question {
  final String question;
  final String answer;

  const MatchQuestion({required this.question, required this.answer});
}
