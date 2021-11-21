import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/questions/match_question.dart';
import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/units/components/match_question_option.dart';

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

  List<String> _getAnswers(List<Question> questions) {
    return questions.map((Question question) {
      final matchQuestion = question as MatchQuestion;
      return matchQuestion.answer;
    }).toList();
  }

  List<Widget> _buildQuestions(List<Question> questions) {
    return questions.asMap().entries.map((element) {
      final MatchQuestion question = element.value as MatchQuestion;
      final String questionText = question.question;
      final int index = element.key;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: _buildMatchQuestion(
            text: questionText,
            index: index,
            onTap: () {
              _showOptionsBottomSheet(context);
            }),
      );
    }).toList();
  }

  Widget _buildMatchQuestion(
      {required int index, required String text, required onTap}) {
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
            onTap: () {
              onTap();
            },
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

  _showOptionsBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) {
          return Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 24),
                physics: const BouncingScrollPhysics(),
                children: [
                  const Text("Выберите вариант",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black)),
                  const SizedBox(
                    height: 24,
                  ),
                  ..._buildMatchQuestionOptions()
                ],
              ));
        });
  }

  List<Widget> _buildMatchQuestionOptions() {
    final answers = _getAnswers(widget.questions);
    return answers
        .map(
          (String answer) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: MatchQuestionOption(
              text: answer,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
        .toList();
  }
}