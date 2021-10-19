import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class MatchAnswer extends StatefulWidget {
  MatchAnswer({Key? key, required this.questions}) : super(key: key);

  final List questions;

  @override
  _MatchAnswerState createState() => _MatchAnswerState();
}

class _MatchAnswerState extends State<MatchAnswer> {
  int? focusedInputIndex = null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 26),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Сопоставьте ответы:",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: ListView(
                    children: widget.questions
                        .map((question) => Column(
                              children: [
                                InputNumberQuestion(
                                  text: question.question.text,
                                  index: question.question.index,
                                  focusedInputIndex: focusedInputIndex,
                                ),
                                SizedBox(height: 20)
                              ],
                            ))
                        .toList()),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 26),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Варианты ответов:",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: ListView(
                    children: widget.questions
                        .map((question) => Column(
                              children: [
                                LetterAnswer(
                                    text: question.answer.answer,
                                    onClick: () => {},
                                    letter: question.answer.letter),
                                SizedBox(height: 20)
                              ],
                            ))
                        .toList()),
              )
            ],
          ),
        )
      ],
    );
  }
}

class InputNumberQuestion extends StatelessWidget {
  const InputNumberQuestion(
      {Key? key,
      required this.text,
      required this.index,
      this.focusedInputIndex})
      : super(key: key);

  final String text;
  final int index;
  final int? focusedInputIndex;

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
            width: 45,
            child: QuestionInput(
                onClick: () => {},
                focused: focusedInputIndex != null
                    ? index == focusedInputIndex
                    : false),
          )
        ],
      ),
    );
  }
}

class QuestionInput extends StatelessWidget {
  const QuestionInput(
      {Key? key,
      required this.onClick,
      required this.focused,
      this.letterAnswer})
      : super(key: key);

  final Function onClick;
  final bool focused;
  final String? letterAnswer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onClick()},
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: focused || letterAnswer != null
                ? AppColors.primaryColor60
                : AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          letterAnswer ?? "",
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class LetterAnswer extends StatelessWidget {
  const LetterAnswer(
      {Key? key,
      required this.text,
      required this.onClick,
      required this.letter})
      : super(key: key);

  final String letter;
  final String text;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onClick()},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          "${letter}   ${text}",
          style:
              TextStyle(color: AppColors.blackColor, fontSize: 16, height: 1.2),
        ),
      ),
    );
  }
}
