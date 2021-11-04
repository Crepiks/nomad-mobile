import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/layouts/components/unit_practice_bottom_actions.dart';

class UnitPracticeLayout extends StatelessWidget {
  const UnitPracticeLayout(
      {Key? key, required this.child, required this.onClickNextLesson})
      : super(key: key);

  final Widget child;
  final Function onClickNextLesson;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: child),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
            child: UnitBottomActions(
              onClickCheck: () {
                buildCheckBottomSheet(context, 4, 5);
              },
            ),
          ),
        ],
      ),
    );
  }

  buildCheckBottomSheet(context, correctAnswers, allAnswers) {
    List<Result> resultTypes = [
      Result(title: "Отлично", color: AppColors.successColor),
      Result(title: "Неплохо", color: AppColors.normalColor),
      Result(title: "Попробуйте снова", color: AppColors.errorColor)
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
        backgroundColor: AppColors.whiteColor,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    result.title,
                    style: TextStyle(
                        color: result.color,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "$correctAnswers правильных ответов из $allAnswers",
                    style: TextStyle(
                        color: AppColors.blackColor80,
                        fontSize: 18,
                        height: 1.3),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ActionButton(
                            reverseColor: true,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Повторить",
                                  style: TextStyle(
                                      color: AppColors.blackColor80,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.syncAlt,
                                  size: 14,
                                  color: AppColors.blackColor80,
                                )
                              ],
                            ),
                            onClick: () {
                              Navigator.of(context).pop();
                            }),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: ActionButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Далее",
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                  size: 14,
                                  color: AppColors.blackColor,
                                )
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
