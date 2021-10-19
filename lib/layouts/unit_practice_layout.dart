import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/layouts/components/unit_practice_bottom_actions.dart';

class UnitPracticeLayout extends StatelessWidget {
  const UnitPracticeLayout({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            child,
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: UnitBottomActions(),
            )
          ],
        ),
      ),
    );
  }
}
