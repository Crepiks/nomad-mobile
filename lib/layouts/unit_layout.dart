import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/unit/unit.dart';
import 'package:nomad/layouts/components/unit_header.dart';
import 'package:nomad/layouts/safe_area_layout.dart';
import 'package:nomad/unit/views/unit_practices.dart';
import 'package:nomad/unit/views/unit_theory.dart';

class UnitLayout extends StatefulWidget {
  UnitLayout({Key? key, required this.unit, required this.index})
      : super(key: key);

  final Unit unit;
  final int index;

  @override
  _UnitLayoutState createState() => _UnitLayoutState();
}

class _UnitLayoutState extends State<UnitLayout> {
  List<dynamic> screens = [];
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();

    screens = [
      UnitTheory(
        theory: widget.unit.theory,
        index: widget.index,
        onClickToPractice: () {},
      ),
      UnitPractices(
        practices: widget.unit.practices,
      )
    ];
  }

  PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
      child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: PageView(
                    controller: _controller,
                    children: [
                      ...screens
                          .map((page) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: page,
                              ))
                          .toList()
                    ],
                    onPageChanged: (newIndex) {
                      changeActiveIndex(newIndex);
                    },
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: UnitHeader(
                    changeActiveIndex: (newIndex) => changeActivePage(newIndex),
                    activeIndex: activeIndex),
              ),
            ],
          )
          // Column(
          //   children: [
          //     SizedBox(height: 30),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 20),
          //       child: UnitHeader(
          //           changeActiveIndex: (newIndex) => changeActivePage(newIndex),
          //           activeIndex: activeIndex),
          //     ),
          //     SizedBox(height: 30),
          //     Expanded(
          //         child: PageView(
          //       controller: _controller,
          //       children: [
          //         ...screens
          //             .map((page) => Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 20),
          //                   child: page,
          //                 ))
          //             .toList()
          //       ],
          //       onPageChanged: (newIndex) {
          //         changeActiveIndex(newIndex);
          //       },
          //     ))
          //   ],
          // ),
          ),
      backgroundColor: AppColors.backgroundColor,
    );
  }

  void changeActiveIndex(newIndex) {
    setState(() {
      activeIndex = newIndex;
    });
  }

  void changeActivePage(newPageIndex) {
    setState(() {
      activeIndex = newPageIndex;
    });

    _controller.animateToPage(newPageIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.ease);
  }
}
