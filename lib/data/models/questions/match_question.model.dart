class MatchQuestion {
  final NumberQuestion question;
  final LetterAnswer answer;

  MatchQuestion(this.question, this.answer);
}

class NumberQuestion {
  final int index;
  final String text;

  NumberQuestion(this.index, this.text);
}

class LetterAnswer {
  final String letter;
  final String answer;

  LetterAnswer(this.letter, this.answer);
}
