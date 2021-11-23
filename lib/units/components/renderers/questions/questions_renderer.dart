import "package:flutter/cupertino.dart";
import 'package:nomad/data/models/questions/input_question.dart';
import 'package:nomad/data/models/questions/match_question.dart';
import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/data/models/questions/true_false_question.dart';
import 'package:nomad/units/components/renderers/questions/input_questions_renderer.dart';
import 'package:nomad/units/components/renderers/questions/match_questions_renderer.dart';
import 'package:nomad/units/components/renderers/questions/true_false_questions_renderer.dart';

typedef AnswerUpdateAction = Function(int index, dynamic value);

class QuestionsRenderer extends StatelessWidget {
  final List<Question> questions;
  final List<dynamic> answers;
  final bool review;
  final AnswerUpdateAction onAnswerUpdate;

  const QuestionsRenderer(
      {Key? key,
      required this.questions,
      required this.answers,
      required this.review,
      required this.onAnswerUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return questions[0] is InputQuestion
        ? InputQuestionsRenderer(
            questions: questions,
            answers: answers,
            onAnswerUpdate: onAnswerUpdate,
          )
        : questions[0] is MatchQuestion
            ? MatchQuestionsRenderer(
                questions: questions,
                answers: answers,
                review: review,
                onAnswerUpdate: onAnswerUpdate,
              )
            : questions[0] is TrueFalseQuestion
                ? TrueFalseQuestionsRenderer(
                    questions: questions,
                    answers: answers,
                    review: review,
                    onAnswerUpdate: onAnswerUpdate,
                  )
                : Container();
  }
}
