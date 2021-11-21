import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';

class MatchQuestionsRenderer extends StatefulWidget {
  const MatchQuestionsRenderer({Key? key, required this.questions})
      : super(key: key);

  final List questions;

  @override
  _MatchQuestionsRendererState createState() => _MatchQuestionsRendererState();
}

class _MatchQuestionsRendererState extends State<MatchQuestionsRenderer> {
  int? focusedInputIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 26),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: ListView(
                  padding: const EdgeInsets.all(0),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 20),
                    const Text("Сопоставьте ответы:",
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 20),
                    for (int index = 0;
                        index < widget.questions.length;
                        index++)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: NumberQuestion(
                            text: widget.questions[index].question,
                            index: index),
                      ),
                    const SizedBox(height: 20),
                  ],
                ))
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 26),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: ListView(
                  padding: const EdgeInsets.all(0),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 20),
                    const Text("Варианты ответов:",
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 20),
                    for (int index = 0;
                        index < widget.questions.length;
                        index++)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: LetterAnswer(
                            text: widget.questions[index].answer, index: index),
                      )
                  ],
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class NumberQuestion extends StatelessWidget {
  const NumberQuestion({Key? key, required this.text, required this.index})
      : super(key: key);

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text("${index + 1}. $text",
                style: const TextStyle(
                    color: AppColors.black, fontSize: 20, height: 1.2)),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 80,
              height: 45,
              decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}

class LetterAnswer extends StatelessWidget {
  const LetterAnswer({Key? key, required this.text, required this.index})
      : super(key: key);

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    final List<String> kazakhAlphabet = [
      "А",
      "Ә",
      "Б",
      "В",
      "Г",
      "Ғ",
      "Д",
      "Е",
      "Ё",
      "Ж",
      "З",
      "И",
      "Й",
      "К",
      "Қ",
      "Л",
      "М",
      "Н"
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
          color: AppColors.background, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${kazakhAlphabet[index]} $text",
            style: const TextStyle(fontSize: 16, color: AppColors.black),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: AppColors.white, borderRadius: BorderRadius.circular(6)),
          )
        ],
      ),
    );
  }
}
