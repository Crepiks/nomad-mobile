import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/units/components/unit_practice_bottom_actions.dart';

class UnitPracticeLayout extends StatelessWidget {
  final Widget child;
  final Function onClickNextLesson;
  final bool isLastPractice;

  const UnitPracticeLayout(
      {Key? key,
      required this.child,
      required this.onClickNextLesson,
      required this.isLastPractice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        child,
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: UnitBottomActions(
            onClickCheck: () {
              buildCheckBottomSheet(context, 4, 5);
            },
          ),
        ),
      ],
    );
  }

  buildCheckBottomSheet(context, correctAnswers, allAnswers) {
    List<Result> resultTypes = [
      Result(title: "Отлично", color: AppColors.success),
      Result(title: "Неплохо", color: AppColors.warning),
      Result(title: "Попробуйте снова", color: AppColors.error)
    ];

    double correctAnswersPercentage = correctAnswers / allAnswers * 100;
    Result result = correctAnswersPercentage > 80
        ? resultTypes[0]
        : correctAnswersPercentage > 50
            ? resultTypes[1]
            : resultTypes[2];

    return showModalBottomSheet(
        context: context,
        enableDrag: false,
        isDismissible: false,
        backgroundColor: AppColors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.only(
                  right: 30, left: 30, top: 30, bottom: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isLastPractice
                      ? const Text("Урок завершен",
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 26,
                              fontWeight: FontWeight.w600))
                      : Text(
                          result.title,
                          style: TextStyle(
                              color: result.color,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "$correctAnswers правильных ответов из $allAnswers",
                    style: const TextStyle(
                        color: AppColors.black, fontSize: 18, height: 1.3),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  isLastPractice
                      ? Column(
                          children: [
                            ActionButton(
                                reverseColor: true,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Повторить",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.syncAlt,
                                      size: 14,
                                      color: AppColors.black,
                                    )
                                  ],
                                ),
                                onClick: () {
                                  Navigator.of(context).pop();
                                }),
                            const SizedBox(
                              height: 15,
                            ),
                            ActionButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Следующий урок",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.arrowRight,
                                      size: 14,
                                      color: AppColors.black,
                                    )
                                  ],
                                ),
                                onClick: () {
                                  onClickNextLesson();
                                  Navigator.of(context).pop();
                                }),
                          ],
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: ActionButton(
                                  reverseColor: true,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Повторить",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.syncAlt,
                                        size: 14,
                                        color: AppColors.black,
                                      )
                                    ],
                                  ),
                                  onClick: () {
                                    Navigator.of(context).pop();
                                  }),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: ActionButton(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Далее",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FaIcon(FontAwesomeIcons.arrowRight,
                                          size: 14, color: AppColors.black)
                                    ],
                                  ),
                                  onClick: () {
                                    onClickNextLesson();
                                    Navigator.of(context).pop();
                                  }),
                            ),
                          ],
                        )
                ],
              ),
            ));
  }
}

class Result {
  final String title;
  final Color color;

  Result({required this.title, required this.color});
}
