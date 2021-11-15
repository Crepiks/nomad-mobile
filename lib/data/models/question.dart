class Question {}

class InputQuestion extends Question {
  final String text;
  final String? afterText;
  final String? postfix;
  final String answer;
  final bool wide;

  InputQuestion(
      {required this.text,
      required this.answer,
      this.wide = false,
      this.afterText,
      this.postfix});
}

class InputImageQuestion extends Question {
  final String text;
  final String imagePath;
  final String? afterText;
  final String? postfix;
  final String answer;
  final bool wide;

  InputImageQuestion(
      {required this.text,
      required this.imagePath,
      required this.answer,
      this.wide = false,
      this.afterText,
      this.postfix});
}

class OneChoiceQuestion extends Question {
  final String text;
  final bool correct;

  OneChoiceQuestion({required this.text, this.correct = false});
}

class TrueFalseQuestion extends Question {
  final String text;
  final bool correct;

  TrueFalseQuestion({required this.text, required this.correct});
}

class MatchQuestion extends Question {
  final String question;
  final String answer;

  MatchQuestion({required this.question, required this.answer});
}
