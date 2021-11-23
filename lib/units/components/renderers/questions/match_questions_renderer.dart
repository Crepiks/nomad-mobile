import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/units/components/match_question_option.dart';

typedef AnswerUpdateAction = Function(int index, String? value);

class MatchQuestionsRenderer extends StatefulWidget {
  final List<Question> questions;
  final List<dynamic> answers;
  final bool review;
  final AnswerUpdateAction onAnswerUpdate;

  const MatchQuestionsRenderer(
      {Key? key,
      required this.questions,
      required this.answers,
      required this.review,
      required this.onAnswerUpdate})
      : super(key: key);

  @override
  _MatchQuestionsRendererState createState() => _MatchQuestionsRendererState();
}

class _MatchQuestionsRendererState extends State<MatchQuestionsRenderer> {
  int? activeQuestionIndex;

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
      return question.answer as String;
    }).toList();
  }

  List<Widget> _buildQuestions(List<Question> questions) {
    return questions.asMap().entries.map((element) {
      final int index = element.key;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: _buildMatchQuestion(
            index: index,
            review: widget.review,
            onTap: () {
              setState(() {
                activeQuestionIndex = index;
              });
              _showOptionsBottomSheet(context);
            }),
      );
    }).toList();
  }

  Widget _buildMatchQuestion({
    required int index,
    required onTap,
    bool review = false,
  }) {
    final question = widget.questions[index];
    final answer = widget.answers[index];

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${index + 1}. ${question.text}",
              style: const TextStyle(
                  color: AppColors.black, fontSize: 18, height: 1.2)),
          const SizedBox(height: 10),
          GestureDetector(
              onTap: () {
                onTap();
              },
              child: answer != null
                  ? _buildSelectedField(
                      answer: answer,
                      success: review ? answer == question.answer : null)
                  : _buildEmptySelectField())
        ],
      ),
    );
  }

  Widget _buildEmptySelectField() {
    return Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: AppColors.primary),
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Text("Выберите вариант", style: TextStyle(fontSize: 16)),
        ));
  }

  Widget _buildSelectedField({required String answer, bool? success}) {
    return Container(
        width: double.infinity,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: success == null
                ? AppColors.primary
                : success
                    ? AppColors.success
                    : AppColors.error,
            border: success == null
                ? Border.all(width: 2, color: AppColors.primary)
                : null,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(answer,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16, color: AppColors.white)),
        ));
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
                  ..._buildMatchQuestionOptions(onTap: _onOptionTap)
                ],
              ));
        });
  }

  List<Widget> _buildMatchQuestionOptions({required onTap}) {
    final answers = _getAnswers(widget.questions);
    return answers
        .map((String answer) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: MatchQuestionOption(
                text: answer,
                selected: _findAnwerByText(answer) != null,
                onTap: () {
                  onTap(answer);
                  Navigator.pop(context);
                },
              ),
            ))
        .toList();
  }

  String? _findAnwerByText(String text) {
    return widget.answers
        .firstWhere((answer) => answer == text, orElse: () => null);
  }

  _onOptionTap(String answer) {
    _removeAnswer(answer);
    if (activeQuestionIndex != null) {
      widget.onAnswerUpdate(activeQuestionIndex!, answer);
    }
  }

  _removeAnswer(String answer) {
    widget.answers.asMap().entries.forEach((element) {
      final value = element.value;
      final index = element.key;

      if (value == answer) {
        widget.onAnswerUpdate(index, null);
      }
    });
  }
}
