import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';

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
                  style:
                      TextStyle(color: AppColors.blackColor, fontSize: 30, fontWeight: FontWeight.bold)),
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
              onClick: () => {}),
        )
      ],
    );
  }
}
