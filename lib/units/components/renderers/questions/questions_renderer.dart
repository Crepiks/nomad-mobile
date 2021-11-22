import "package:flutter/cupertino.dart";
import 'package:nomad/data/models/questions/input_question.dart';
import 'package:nomad/data/models/questions/match_question.dart';
import 'package:nomad/data/models/questions/one_choice_question.dart';
import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/data/models/questions/true_false_question.dart';
import 'package:nomad/units/components/renderers/questions/input_questions_renderer.dart';
import 'package:nomad/units/components/renderers/questions/match_questions_renderer.dart';
import 'package:nomad/units/components/renderers/questions/true_false_questions_renderer.dart';
import 'package:nomad/units/components/renderers/questions/one_choice_questions_renderer.dart';

typedef AnswersUpdateAction = Function(List<dynamic>);

class QuestionsRenderer extends StatelessWidget {
  final List<Question> questions;
  final AnswersUpdateAction onAnswersUpdate;

  const QuestionsRenderer(
      {Key? key, required this.questions, required this.onAnswersUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return questions[0] is InputQuestion
        ? InputQuestionsRenderer(questions: questions)
        : questions[0] is OneChoiceQuestion
            ? OneChoiceQuestionsRenderer(questions: questions)
            : questions[0] is MatchQuestion
                ? MatchQuestionsRenderer(
                    questions: questions,
                    onAnswersUpdate: onAnswersUpdate,
                  )
                : questions[0] is TrueFalseQuestion
                    ? TrueFalseQuestionsRenderer(questions: questions)
                    : Container();
  }
}
