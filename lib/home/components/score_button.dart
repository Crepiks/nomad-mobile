import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';

class ScoreButton extends StatelessWidget {
  final int score;
  final Function onClick;

  const ScoreButton({Key? key, required this.score, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: CupertinoButton(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                score.toString(),
                style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 10,
              ),
              const FaIcon(
                FontAwesomeIcons.fire,
                size: 18,
                color: AppColors.primary,
              )
            ],
          ),
          onPressed: () => {onClick()}),
    );
  }
}
