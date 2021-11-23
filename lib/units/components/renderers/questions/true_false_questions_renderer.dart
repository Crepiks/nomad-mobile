import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/units/components/true_false_button.dart';

typedef TapAction = Function(bool value);
typedef AnswerUpdateAction = Function(int index, bool value);

class TrueFalseQuestionsRenderer extends StatelessWidget {
  final List<Question> questions;
  final List<dynamic> answers;
  final AnswerUpdateAction onAnswerUpdate;

  const TrueFalseQuestionsRenderer(
      {Key? key,
      required this.questions,
      required this.answers,
      required this.onAnswerUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: questions.asMap().entries.map((element) {
        final Question question = element.value;
        final int index = element.key;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: TrueFalseQuestionRenderer(
              text: question.text,
              value: answers[index],
              onTap: (bool value) {
                onAnswerUpdate(index, value);
              }),
        );
      }).toList(),
    );
  }
}

class TrueFalseQuestionRenderer extends StatelessWidget {
  final String text;
  final bool? value;
  final TapAction onTap;

  const TrueFalseQuestionRenderer(
      {Key? key, required this.text, required this.onTap, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: const TextStyle(
                  color: AppColors.black, fontSize: 16, height: 1)),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                  child: TrueFalseButton(
                text: "Дұрыс",
                active: value == true,
                onTap: () {
                  onTap(true);
                },
              )),
              const SizedBox(width: 10),
              Expanded(
                  child: TrueFalseButton(
                text: "Бұрыс",
                active: value == false,
                onTap: () {
                  onTap(false);
                },
              ))
            ],
          )
        ],
      ),
    );
  }
}
