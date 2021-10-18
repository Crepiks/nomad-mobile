import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class SafeAreaLayout extends StatelessWidget {
  const SafeAreaLayout(
      {Key? key,
      required this.child,
      this.backgroundColor = AppColors.backgroundColor})
      : super(key: key);

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      backgroundColor: backgroundColor,
    );
  }
}
