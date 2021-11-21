import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/questions/match_question.dart';
import 'package:nomad/data/models/questions/question.dart';

class MatchQuestionsRenderer extends StatefulWidget {
  final List<Question> questions;

  const MatchQuestionsRenderer({Key? key, required this.questions})
      : super(key: key);

  @override
  _MatchQuestionsRendererState createState() => _MatchQuestionsRendererState();
}

class _MatchQuestionsRendererState extends State<MatchQuestionsRenderer> {
  int? focusedInputIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text("Сопоставьте ответы",
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            ..._buildQuestions(widget.questions),
            const SizedBox(height: 20),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  List<Widget> _buildQuestions(List<Question> questions) {
    return questions.asMap().entries.map((element) {
      final MatchQuestion question = element.value as MatchQuestion;
      final String questionText = question.question;
      final int index = element.key;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: _buildMatchQuestion(text: questionText, index: index),
      );
    }).toList();
  }

  Widget _buildMatchQuestion({required int index, required String text}) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${index + 1}. $text",
              style: const TextStyle(
                  color: AppColors.black, fontSize: 18, height: 1.2)),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: AppColors.primary),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text("Выберите вариант",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                )),
          )
        ],
      ),
    );
  }
}
