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
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 26),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Впишите ответы:",
              style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView(
                children: questions
                    .map((question) => Column(
                          children: [
                            ShortInputAnswer(text: question.text),
                            SizedBox(height: 20)
                          ],
                        ))
                    .toList()),
          )
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
      height: 60,
      child: Row(
        children: [
          Text(text,
              style: TextStyle(
                  color: AppColors.blackColor, fontSize: 20, height: 1.2)),
          SizedBox(width: 10),
          SizedBox(
            width: 120,
            child: Input(hasTitle: false, updateValue: () => {}),
          )
        ],
      ),
    );
  }
}
