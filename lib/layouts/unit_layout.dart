import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/layouts/components/unit_header.dart';
import 'package:nomad/layouts/safe_area_layout.dart';
import 'package:nomad/unit/views/unit_practice.dart';

class UnitLayout extends StatefulWidget {
  UnitLayout(
      {Key? key,
      required this.questionTitle,
      this.questionSubtitle = "",
      required this.questionType,
      required this.quesions,
      required this.questionIndex})
      : super(key: key);

  final int questionIndex;
  final String questionTitle;
  final String questionSubtitle;
  final String questionType;
  final List quesions;

  @override
  _UnitLayoutState createState() => _UnitLayoutState();
}

class _UnitLayoutState extends State<UnitLayout> {
  List<dynamic> screens = [];
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();

    screens = [
      Container(),
      UnitPractice(
        questionIndex: 1,
        questionTitle: widget.questionTitle,
        questionSubtitle: widget.questionSubtitle,
        questionType: widget.questionType,
        quesions: widget.quesions,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 30),
              UnitHeader(
                changeActiveIndex: (newIndex) => changeActiveIndex(newIndex),
              ),
              Expanded(child: screens[this.activeIndex])
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }

  void changeActiveIndex(newIndex) {
    activeIndex = newIndex;
  }
}
