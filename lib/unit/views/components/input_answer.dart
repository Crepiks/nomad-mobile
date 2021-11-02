import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/input.dart';

class InputAnswer extends StatelessWidget {
  const InputAnswer({Key? key, required this.questions}) : super(key: key);

  final List questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 26),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(physics: BouncingScrollPhysics(), children: [
              SizedBox(height: 20),
              Text("Впишите ответы:",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 20),
              ...questions
                  .map((question) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ShortInputAnswer(text: question.text),
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

class ShortInputAnswer extends StatelessWidget {
  const ShortInputAnswer({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text,
              style: TextStyle(
                  color: AppColors.blackColor, fontSize: 20, height: 1.2)),
          SizedBox(width: 10),
          SizedBox(
            width: 120,
            child: Input(
                hasTitle: false, practiceInput: true, updateValue: () => {}),
          )
        ],
      ),
    );
  }
}
