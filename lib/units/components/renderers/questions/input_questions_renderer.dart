import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/units/components/answer_input.dart';

typedef AnswerUpdateAction = Function(int index, dynamic text);

class InputQuestionsRenderer extends StatelessWidget {
  final List<Question> questions;
  final List<dynamic> answers;
  final AnswerUpdateAction onAnswerUpdate;

  const InputQuestionsRenderer(
      {Key? key,
      required this.questions,
      required this.answers,
      required this.onAnswerUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 20),
        const Text("Впишите ответы",
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 22,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
        ...questions.asMap().entries.map((element) {
          final Question question = element.value;
          final index = element.key;

          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: QuestionRenderer(
                  text: question.text,
                  answer: "",
                  onTextChange: (String text) {
                    onAnswerUpdate(index, text);
                  }));
        }).toList(),
        const SizedBox(height: 20),
      ]),
    );
  }
}

class QuestionRenderer extends StatelessWidget {
  final String text;
  final String answer;
  final TextChangeAction onTextChange;

  const QuestionRenderer(
      {Key? key,
      required this.text,
      required this.onTextChange,
      required this.answer})
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
                  color: AppColors.black, fontSize: 16, height: 1.2)),
          const SizedBox(height: 10),
          SizedBox(
              width: double.infinity,
              child: AnswerInput(
                value: answer,
                onTextChange: onTextChange,
              ))
        ],
      ),
    );
  }
}
