import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/layouts/components/unit_header.dart';
import 'package:nomad/layouts/safe_area_layout.dart';

class UnitLayout extends StatefulWidget {
  UnitLayout({Key? key}) : super(key: key);

  @override
  _UnitLayoutState createState() => _UnitLayoutState();
}

class _UnitLayoutState extends State<UnitLayout> {
  int activeIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 30),
              UnitHeader(
                changeActiveIndex: (newIndex) => changeActiveIndex(newIndex),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }

  void changeActiveIndex(newIndex) {
    activeIndex = newIndex;
  }
}
