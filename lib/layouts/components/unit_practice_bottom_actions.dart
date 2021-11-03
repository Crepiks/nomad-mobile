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
            padding: EdgeInsets.all(0),
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20),
            child: FaIcon(
              FontAwesomeIcons.syncAlt,
              color: AppColors.blackColor80,
              size: 16,
            ),
            onPressed: () {
              buildRestartBottomSheet(context);
            },
          ),
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

  buildRestartBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
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
                    "Сбросить ответы?",
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Все ответы именно этого задания очистятся, чтобы вы могли начать заново",
                    style: TextStyle(
                        color: AppColors.blackColor80,
                        fontSize: 18,
                        height: 1.3),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                      child: Text(
                        "Сбросить",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ));
  }
}
