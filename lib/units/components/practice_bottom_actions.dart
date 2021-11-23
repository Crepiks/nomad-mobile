import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/action_button.dart';

typedef CheckAction = Function();
typedef NextAction = Function();
typedef RestartAction = Function();

class PracticeBottomActions extends StatelessWidget {
  final bool review;
  final CheckAction onCheckTap;
  final NextAction onNextTap;
  final RestartAction onRestart;

  const PracticeBottomActions(
      {Key? key,
      required this.review,
      required this.onCheckTap,
      required this.onNextTap,
      required this.onRestart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CupertinoButton(
            padding: const EdgeInsets.all(0),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            child: const FaIcon(
              FontAwesomeIcons.syncAlt,
              color: AppColors.black,
              size: 16,
            ),
            onPressed: () {
              _buildRestartBottomSheet(context);
            },
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child:
                review ? _buildNextActionButton() : _buildCheckActionButton())
      ],
    );
  }

  _buildRestartBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Сбросить ответы?",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Все ответы именно этого задания очистятся, чтобы вы могли начать заново",
                    style: TextStyle(
                        color: AppColors.black, fontSize: 18, height: 1.3),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                      child: const Text(
                        "Сбросить",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () {
                        onRestart();
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ));
  }

  Widget _buildNextActionButton() {
    return ActionButton(
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
              size: 16,
              color: AppColors.black,
            )
          ],
        ),
        onClick: () {
          onNextTap();
        });
  }

  Widget _buildCheckActionButton() {
    return ActionButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Проверить",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.check,
              size: 16,
              color: AppColors.black,
            )
          ],
        ),
        onClick: () {
          onCheckTap();
        });
  }
}
