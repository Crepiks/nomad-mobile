import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/practice.dart';
import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/units/components/check_result.dart';
import 'package:nomad/units/components/renderers/questions/questions_renderer.dart';
import 'package:nomad/units/components/unit_practice_bottom_actions.dart';
import 'package:nomad/units/components/practice_task.dart';

class Result {
  final String title;
  final Color color;

  Result({required this.title, required this.color});
}

class UnitPracticesView extends StatefulWidget {
  final List<Practice> practices;
  final Function onClickNextLesson;

  const UnitPracticesView(
      {Key? key, required this.practices, required this.onClickNextLesson})
      : super(key: key);

  @override
  _UnitPracticesViewState createState() => _UnitPracticesViewState();
}

class _UnitPracticesViewState extends State<UnitPracticesView> {
  int activePracticeIndex = 0;
  List<dynamic> answers = [];
  bool review = false;

  @override
  void initState() {
    _initializeAnswersList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final practice = widget.practices[activePracticeIndex];

    return Stack(alignment: Alignment.bottomCenter, children: [
      SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: _buildPracticeBody(activePracticeIndex, practice)),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: UnitBottomActions(
          review: review,
          onCheckTap: () {
            if (_hasNotAnsweredQuestions()) {
              return _showEmptyFieldsErrorSnackBar();
            }

            final correctAnswersCount =
                _getCorrectAnswersCount(practice.questions);
            _showCheckResultBottomSheet(
                context, correctAnswersCount, practice.questions.length);
          },
          onNextTap: () {
            _onNextLessonMove();
          },
        ),
      ),
    ]);
  }

  _initializeAnswersList() {
    setState(() {
      answers = List.filled(
          widget.practices[activePracticeIndex].questions.length, null);
    });
  }

  bool _hasNotAnsweredQuestions() {
    return answers.any((element) => element == null || element == "");
  }

  int _getCorrectAnswersCount(List<Question> questions) {
    return questions.asMap().entries.fold(0, (int value, element) {
      final Question question = element.value;
      final index = element.key;
      final answer = answers[index];

      if (question.answer == answer) {
        return value + 1;
      }

      return value;
    });
  }

  Widget _buildPracticeBody(int index, Practice practice) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: [
        const SizedBox(
          height: 80,
        ),
        PracticeTask(
            index: index + 1,
            title: practice.title,
            description: practice.description ?? ""),
        const SizedBox(height: 20),
        QuestionsRenderer(
          key: Key(index.toString()),
          questions: practice.questions,
          answers: answers,
          review: review,
          onAnswerUpdate: (int index, dynamic answer) {
            setState(() {
              answers[index] = answer;
              answers = answers;
            });
          },
        )
      ],
    );
  }

  _showEmptyFieldsErrorSnackBar() {
    Get.snackbar("", "",
        titleText: const Text("Ошибка валидации",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.white)),
        messageText: const Text(
          "Проверьте правильность заполнения всех полей",
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.error,
        animationDuration: const Duration(milliseconds: 200));
  }

  _showCheckResultBottomSheet(context, correctAnswers, allAnswers) {
    List<Result> resultTypes = [
      Result(title: "Отлично", color: AppColors.success),
      Result(title: "Неплохо", color: AppColors.warning),
      Result(title: "Попробуйте снова", color: AppColors.error)
    ];

    double correctAnswersPercentage = correctAnswers / allAnswers * 100;
    Result result = correctAnswersPercentage > 80
        ? resultTypes[0]
        : correctAnswersPercentage > 50
            ? resultTypes[1]
            : resultTypes[2];

    return showModalBottomSheet(
        context: context,
        enableDrag: false,
        isDismissible: false,
        isScrollControlled: true,
        backgroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => CheckResult(
              title: result.title,
              color: result.color,
              onNextLessonMove: () {
                _onNextLessonMove();
              },
              onReview: () {
                setState(() {
                  review = true;
                });
              },
            ));
  }

  _onNextLessonMove() {
    setState(() {
      if (activePracticeIndex + 1 == widget.practices.length) {
        widget.onClickNextLesson();
        activePracticeIndex = 0;
      } else {
        activePracticeIndex++;
      }

      review = false;

      answers = List.filled(
          widget.practices[activePracticeIndex].questions.length, null);
    });
  }
}
