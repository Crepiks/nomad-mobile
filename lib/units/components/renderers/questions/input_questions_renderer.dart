import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/units/components/answer_input.dart';

class InputQuestionsRenderer extends StatelessWidget {
  const InputQuestionsRenderer({Key? key, required this.questions})
      : super(key: key);

  final List questions;

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
        ...questions
            .map((question) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: QuestionRenderer(text: question.text)))
            .toList(),
        const SizedBox(height: 20),
      ]),
    );
  }
}

class QuestionRenderer extends StatelessWidget {
  final String text;

  const QuestionRenderer({Key? key, required this.text}) : super(key: key);

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
          SizedBox(width: double.infinity, child: AnswerInput())
        ],
      ),
    );
  }
}
