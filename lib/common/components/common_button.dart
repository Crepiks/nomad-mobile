import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.text,
    required this.onClick,
    this.reverseColor = false,
  }) : super(key: key);

  final String text;
  final bool reverseColor;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        onClick();
      },
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: reverseColor ? AppColors.white : AppColors.primary,
      borderRadius: BorderRadius.circular(12),
      child: Text(
        text,
        style: TextStyle(
            color: reverseColor ? AppColors.black : AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14),
      ),
    );
  }
}
