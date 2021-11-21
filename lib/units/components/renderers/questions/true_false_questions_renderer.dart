import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/units/components/renderers/questions/true_false_question_renderer.dart';

class TrueFalseQuestionsRenderer extends StatelessWidget {
  final List questions;

  const TrueFalseQuestionsRenderer({Key? key, required this.questions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: questions
          .map((question) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: TrueFalseQuestionRenderer(
                    id: question.id, text: question.text),
              ))
          .toList(),
    );
  }
}
