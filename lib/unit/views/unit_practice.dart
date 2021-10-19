import "package:flutter/material.dart";
import 'package:nomad/layouts/unit_practice_layout.dart';
import 'package:nomad/unit/views/components/input_answer.dart';
import 'package:nomad/unit/views/components/practice_title.dart';

class UnitPractice extends StatefulWidget {
  UnitPractice(
      {Key? key,
      required this.questionTitle,
      required this.questionSubtitle,
      required this.questionType,
      required this.quesions})
      : super(key: key);

  final String questionTitle;
  final String questionSubtitle;
  final String questionType;
  final List quesions;

  @override
  _UnitPracticeState createState() => _UnitPracticeState();
}

class _UnitPracticeState extends State<UnitPractice> {
  @override
  Widget build(BuildContext context) {
    return UnitPracticeLayout(
        child: Column(
      children: [
        SizedBox(height: 36),
        PracticeTitle(
          index: 1,
          title: widget.questionTitle,
          subtitle: widget.questionSubtitle,
        ),
        SizedBox(height: 20),
        widget.questionType == "input"
            ? InputAnswer(
                questions: widget.quesions,
              )
            : Container()
      ],
    ));
  }
}
