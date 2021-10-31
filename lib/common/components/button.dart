import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import '../colors.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.text,
      this.reverseColor = false,
      required this.onClick})
      : super(key: key);

  final String text;
  final bool reverseColor;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        onClick();
      },
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: reverseColor ? AppColors.whiteColor : AppColors.primaryColor,
      borderRadius: BorderRadius.circular(12),
      child: Text(
        text,
        style: TextStyle(
            color: reverseColor ? AppColors.blackColor : AppColors.whiteColor,
            fontSize: 14),
      ),
    );
  }
}
