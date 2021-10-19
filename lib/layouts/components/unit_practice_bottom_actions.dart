import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/data/models/one_choice_question.model.dart';
import 'package:nomad/layouts/unit_layout.dart';

class UnitBottomActions extends StatelessWidget {
  const UnitBottomActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CupertinoButton(
              color: AppColors.whiteColor,
              padding: EdgeInsets.all(0),
              borderRadius: BorderRadius.circular(20),
              child: Text("···",
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              onPressed: () => {}),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: ActionButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Проверить",
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
                    size: 16,
                    color: AppColors.blackColor,
                  )
                ],
              ),
              onClick: () => {
                    Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => UnitLayout(
                                    questionIndex: 2,
                                    questionTitle:
                                        "Сөздерге –мын/-мін/-бын/-бін/-пын/-пін/-сың/-сің/-сыз/-сіз жалғауларын дұрыс жалғаңыз",
                                    questionType: "choice",
                                    questions: [
                                      OneChoiceQuestion(
                                          "Мен мұғалім", false, 0),
                                      OneChoiceQuestion("Сен оқушы", false, 1),
                                      OneChoiceQuestion("Сіз ана", true, 2),
                                      OneChoiceQuestion(
                                          "Сен спортшы", false, 3),
                                      OneChoiceQuestion("Сіз әнші", false, 4),
                                      OneChoiceQuestion("Мен қыз", false, 5)
                                    ])))
                  }),
        )
      ],
    );
  }
}
