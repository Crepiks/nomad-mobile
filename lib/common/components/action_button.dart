import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../constants/app_colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
      {Key? key,
      required this.child,
      this.reverseColor = false,
      required this.onClick})
      : super(key: key);

  final Widget child;
  final Function onClick;
  final bool reverseColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 60,
        child: CupertinoButton(
          padding: const EdgeInsets.all(0),
          child: Center(child: child),
          color: reverseColor ? AppColors.background : AppColors.primary,
          borderRadius: BorderRadius.circular(20),
          onPressed: () => onClick(),
        ));
  }
}
