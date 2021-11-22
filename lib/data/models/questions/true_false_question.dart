import 'package:nomad/data/models/questions/question.dart';

class TrueFalseQuestion extends Question {
  const TrueFalseQuestion({required text, required answer})
      : super(text: text, answer: answer);
}
