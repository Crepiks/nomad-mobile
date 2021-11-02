import "package:flutter/material.dart";
import 'package:nomad/data/models/unit/unit_practice.dart';
import 'package:nomad/data/models/unit/unit_practice_question.dart';
import 'package:nomad/layouts/unit_practice_layout.dart';
import 'package:nomad/unit/views/components/input_answer.dart';
import 'package:nomad/unit/views/components/match_answer.dart';
import 'package:nomad/unit/views/components/one_choice_answer.dart';
import 'package:nomad/unit/views/components/practice_title.dart';
import 'package:nomad/unit/views/components/true_false_answer.dart';

class UnitPractices extends StatefulWidget {
  UnitPractices({Key? key, required this.practices}) : super(key: key);

  final List<UnitPracticeModal> practices;

  @override
  _UnitPracticesState createState() => _UnitPracticesState();
}

class _UnitPracticesState extends State<UnitPractices> {
  int activePracticeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return UnitPracticeLayout(
        child: UnitPractice(
            practice: widget.practices[activePracticeIndex],
            index: activePracticeIndex));
  }
}

class UnitPractice extends StatelessWidget {
  const UnitPractice({Key? key, required this.practice, required this.index})
      : super(key: key);

  final UnitPracticeModal practice;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          PracticeTitle(
              index: index + 1,
              title: practice.title,
              subtitle: practice.description ?? ""),
          SizedBox(height: 20),
          Expanded(
              child: practice.questions[0] is InputQuestion
                  ? InputAnswer(questions: practice.questions)
                  : practice.questions[0] is OneChoiceQuestion
                      ? OneChoiceAnswer(questions: practice.questions)
                      : practice.questions[0] is MatchQuestion
                          ? MatchAnswer(questions: practice.questions)
                          : practice.questions[0] is TrueFalseQuestion
                              ? TrueFalseAnswer(questions: practice.questions)
                              : Container())
        ],
      ),
    );
  }
}
