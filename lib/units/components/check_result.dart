import "package:flutter/cupertino.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/common/constants/app_colors.dart';

typedef NextLessonMoveAction = Function();
typedef ReviewAction = Function();

class CheckResult extends StatelessWidget {
  final String title;
  final int scoreToAdd;
  final NextLessonMoveAction? onNextLessonMove;
  final ReviewAction? onReview;

  const CheckResult({
    Key? key,
    required this.title,
    required this.scoreToAdd,
    this.onNextLessonMove,
    this.onReview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTitle(title),
              Row(
                children: [
                  Text(
                    "+$scoreToAdd",
                    style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary),
                  ),
                  const SizedBox(width: 6),
                  const FaIcon(
                    FontAwesomeIcons.fire,
                    color: AppColors.primary,
                    size: 22,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              _buildNextLessonButton(context),
              const SizedBox(
                height: 10,
              ),
              _buildReviewButton(context)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: AppColors.primary, fontSize: 24, fontWeight: FontWeight.w500),
    );
  }

  Widget _buildNextLessonButton(BuildContext context) {
    return ActionButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "?????????????????? ????????",
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

  Widget _buildReviewButton(BuildContext context) {
    return ActionButton(
        reverseColor: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "???????????????????? ????????????????????",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.flagCheckered,
              size: 14,
              color: AppColors.black,
            )
          ],
        ),
        onClick: () {
          if (onReview != null) {
            onReview!();
          }
          Navigator.of(context).pop();
        });
  }
}
