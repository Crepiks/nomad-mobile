import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class TrueFalseAnswer extends StatelessWidget {
  const TrueFalseAnswer({Key? key, required this.questions}) : super(key: key);

  final List questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 26),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(physics: BouncingScrollPhysics(), children: [
              SizedBox(height: 20),
              Text("Определите верно или не верно:",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 20),
              ...questions
                  .map((question) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TrueFalseRow(text: question.text),
                      ))
                  .toList(),
              SizedBox(height: 20),
            ]),
          ),
        ],
      ),
    );
  }
}

class TrueFalseRow extends StatelessWidget {
  const TrueFalseRow({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$text:",
              style: TextStyle(
                  color: AppColors.blackColor, fontSize: 20, height: 1.2)),
          SizedBox(height: 10),
          Row(
            children: [
              TrueFalseButton(trueFalse: true, onClick: () {}),
              SizedBox(width: 10),
              TrueFalseButton(
                trueFalse: false,
                onClick: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class TrueFalseButton extends StatelessWidget {
  const TrueFalseButton(
      {Key? key, required this.trueFalse, required this.onClick})
      : super(key: key);

  final bool trueFalse;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Text(trueFalse ? "Дұрыс" : "Дұрыс емес",
            style: TextStyle(color: AppColors.blackColor80, fontSize: 16)),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        onPressed: () {
          onClick();
        });
  }
}
