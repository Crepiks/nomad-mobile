import "package:flutter/material.dart";
import 'package:nomad/data/models/practice.dart';
import 'package:nomad/units/components/renderers/questions/questions_renderer.dart';
import 'package:nomad/units/layouts/unit_practice_layout.dart';
import 'package:nomad/units/components/practice_task.dart';

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

  @override
  Widget build(BuildContext context) {
    return UnitPracticeLayout(
        isLastPractice: activePracticeIndex + 1 == widget.practices.length,
        onClickNextLesson: () {
          setState(() {
            if (activePracticeIndex + 1 == widget.practices.length) {
              widget.onClickNextLesson();
              activePracticeIndex = 0;
            } else {
              activePracticeIndex++;
            }
          });
        },
        child: UnitPractice(
            practice: widget.practices[activePracticeIndex],
            index: activePracticeIndex));
  }
}

class UnitPractice extends StatelessWidget {
  const UnitPractice({Key? key, required this.practice, required this.index})
      : super(key: key);

  final Practice practice;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          questions: practice.questions,
        )
      ],
    );
  }
}
