import 'package:nomad/data/models/questions/question.dart';

class MatchQuestion extends Question {
  const MatchQuestion({required text, required answer})
      : super(text: text, answer: answer);
}
