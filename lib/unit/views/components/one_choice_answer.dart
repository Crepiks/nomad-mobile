import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class OneChoiceAnswer extends StatefulWidget {
  OneChoiceAnswer({Key? key, required this.questions}) : super(key: key);

  final List questions;

  @override
  _OneChoiceAnswerState createState() => _OneChoiceAnswerState();
}

class _OneChoiceAnswerState extends State<OneChoiceAnswer> {
  int answeredIndex = 0;

  void setAnsweredIndex(newIndex) {
    setState(() {
      answeredIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 26),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Выберите один ответ:",
              style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView(
                children: widget.questions
                    .map((question) => Column(
                          children: [
                            OneChoice(
                                text: question.text,
                                active: answeredIndex == question.index,
                                onClick: () =>
                                    setAnsweredIndex(question.index)),
                            SizedBox(height: 16)
                          ],
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}

class OneChoice extends StatelessWidget {
  const OneChoice(
      {Key? key,
      required this.text,
      required this.active,
      required this.onClick})
      : super(key: key);

  final String text;
  final bool active;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onClick()},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        decoration: BoxDecoration(
            color:
                active ? AppColors.primaryColor60 : AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style:
              TextStyle(color: AppColors.blackColor, fontSize: 16, height: 1.2),
        ),
      ),
    );
  }
}
