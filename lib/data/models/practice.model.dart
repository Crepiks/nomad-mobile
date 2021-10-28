import 'package:dartz/dartz.dart';
import 'package:nomad/data/models/questions/input_question.model.dart';
import 'package:nomad/data/models/questions/match_question.model.dart';
import 'package:nomad/data/models/questions/one_choice_question.model.dart';
import 'package:nomad/data/models/questions/thue_false_question.model.dart';

class Practice {
  final int index;
  final String title;
  final String explanation;
  final String type;
  final List<
      Either<
          InputQuestion,
          Either<OneChoiceQuestion,
              Either<TrueFalseQuestion, MatchQuestion>>>> questions;

  Practice(this.index, this.title, this.explanation, this.type, this.questions);
}
