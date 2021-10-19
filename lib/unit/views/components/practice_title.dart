import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class PracticeTitle extends StatelessWidget {
  const PracticeTitle(
      {Key? key, required this.index, required this.title, this.subtitle = ""})
      : super(key: key);

  final int index;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${index}. ${title}",
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 1.3),
        ),
        subtitle != "" ? SizedBox(height: 14) : Container(),
        subtitle != ""
            ? Text(subtitle,
                style: TextStyle(
                    color: AppColors.blackColor80, fontSize: 16, height: 1.2))
            : Container()
      ],
    );
  }
}
