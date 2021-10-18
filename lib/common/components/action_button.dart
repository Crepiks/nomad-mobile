import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../colors.dart';

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
          child: child,
          color:
              reverseColor ? AppColors.backgroundColor : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
          onPressed: () => onClick(),
        ));
  }
}
