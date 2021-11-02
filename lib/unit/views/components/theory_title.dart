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
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      child: FittedBox(
        child: Text(
          "Урок $index. $title",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              height: 1.3,
              color: AppColors.blackColor,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
