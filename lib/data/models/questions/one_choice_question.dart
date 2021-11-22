import 'package:nomad/data/models/questions/question.dart';

class OneChoiceQuestion extends Question {
  const OneChoiceQuestion({required text, required answer})
      : super(text: text, answer: answer);
}
