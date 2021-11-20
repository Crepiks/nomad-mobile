import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/common_input.dart';

class InputAnswer extends StatelessWidget {
  const InputAnswer({Key? key, required this.questions}) : super(key: key);

  final List questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 26),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
                padding: const EdgeInsets.all(0),
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 20),
                  const Text("Впишите ответы:",
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  ...questions
                      .map((question) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: question.wide
                                ? WideInputAnswer(text: question.text)
                                : ShortInputAnswer(text: question.text),
                          ))
                      .toList(),
                  const SizedBox(height: 20),
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
          Flexible(
            child: Text(text,
                style: const TextStyle(
                    color: AppColors.black, fontSize: 20, height: 1.2)),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 120,
            child: CommonInput(
                hasTitle: false, practiceInput: true, updateValue: () => {}),
          )
        ],
      ),
    );
  }
}

class WideInputAnswer extends StatelessWidget {
  const WideInputAnswer({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$text:",
              style: const TextStyle(
                  color: AppColors.black, fontSize: 20, height: 1.2)),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: CommonInput(
                hasTitle: false, practiceInput: true, updateValue: () => {}),
          )
        ],
      ),
    );
  }
}
