import "package:flutter/cupertino.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/common/constants/app_colors.dart';

typedef NextLessonMoveAction = Function();

class CheckResult extends StatelessWidget {
  final String title;
  final Color color;
  final NextLessonMoveAction? onNextLessonMove;

  const CheckResult(
      {Key? key,
      required this.title,
      required this.color,
      this.onNextLessonMove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(title, color),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [_buildNextLessonButton(context)],
          )
        ],
      ),
    );
  }

  Widget _buildTitle(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 26, fontWeight: FontWeight.w600),
    );
  }

  Widget _buildNextLessonButton(BuildContext context) {
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
              size: 14,
              color: AppColors.black,
            )
          ],
        ),
        onClick: () {
          if (onNextLessonMove != null) {
            onNextLessonMove!();
          }
          Navigator.of(context).pop();
        });
  }
}
