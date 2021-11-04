import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
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
        onClickToPractice: () {
          changeActivePage(1);
        },
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
                    activeIndex: activeIndex,
                    onClickExtraFunctions: () {
                      buildExtraFunctionsSheet(
                          context, widget.unit, widget.index + 1);
                    }),
              ),
            ],
          )),
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

  buildExtraFunctionsSheet(BuildContext context, Unit unit, int index) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.whiteColor,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Урок $index. ${unit.theory.title}",
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 22,
                        height: 1.3,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Заданий в уроке: ${unit.practices.length}",
                    style:
                        TextStyle(color: AppColors.blackColor80, fontSize: 18),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CupertinoButton(
                            padding: const EdgeInsets.all(0),
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(16),
                            child: FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: AppColors.blackColor,
                              size: 16,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: Text(
                        "Перейти на другой урок",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.blackColor, fontSize: 18),
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CupertinoButton(
                            padding: const EdgeInsets.all(0),
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(16),
                            child: FaIcon(
                              FontAwesomeIcons.arrowRight,
                              color: AppColors.blackColor,
                              size: 16,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ActionButton(
                      reverseColor: true,
                      child: Text(
                        "Закрыть",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ));
  }
}
