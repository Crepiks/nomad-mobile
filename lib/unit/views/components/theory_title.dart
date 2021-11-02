import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class TheoryTitle extends StatelessWidget {
  const TheoryTitle({Key? key, required this.index, required this.title})
      : super(key: key);

  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        "Урок $index. $title",
        textAlign: TextAlign.center,
        style: TextStyle(
            height: 1.3,
            color: AppColors.blackColor,
            fontSize: 24,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
