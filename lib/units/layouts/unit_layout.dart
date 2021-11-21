import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/data/models/unit.dart';
import 'package:nomad/units/components/unit_header.dart';
import 'package:nomad/units/views/unit_practices.dart';
import 'package:nomad/units/views/unit_theory.dart';

class UnitLayout extends StatefulWidget {
  final List<Unit> units;
  final int index;

  const UnitLayout({Key? key, required this.units, required this.index})
      : super(key: key);

  @override
  _UnitLayoutState createState() => _UnitLayoutState();
}

class _UnitLayoutState extends State<UnitLayout> {
  List<dynamic> screens = [];
  int activePageIndex = 0;
  int activeUnitIndex = 0;

  @override
  void initState() {
    super.initState();

    activeUnitIndex = widget.index;

    updateScreens();
  }

  void updateScreens() {
    screens = [
      UnitTheory(
        theory: widget.units[activeUnitIndex].theory,
        index: activeUnitIndex,
        onClickToPractice: () {
          changeActivePage(1);
        },
      ),
      UnitPractices(
        practices: widget.units[activeUnitIndex].practices,
        onClickNextLesson: () {
          routeNextUnit();
        },
      )
    ];
  }

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.only(top: 40),
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
                      changeActivePageIndex(newIndex);
                    },
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: UnitHeader(
                    changeActivePageIndex: (newIndex) =>
                        changeActivePage(newIndex),
                    activePageIndex: activePageIndex,
                    onClickExtraFunctions: () {
                      buildExtraFunctionsSheet(context,
                          widget.units[activeUnitIndex], activeUnitIndex + 1);
                    }),
              ),
            ],
          )),
    );
  }

  void changeActivePageIndex(newIndex) {
    setState(() {
      activePageIndex = newIndex;
    });
  }

  void changeActivePage(newPageIndex) {
    setState(() {
      activePageIndex = newPageIndex;
    });

    _controller.animateToPage(newPageIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.ease);
  }

  buildExtraFunctionsSheet(BuildContext context, Unit unit, int index) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Урок $index. ${unit.theory.title}",
                    style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 22,
                        height: 1.3,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Заданий в уроке: ${unit.practices.length}",
                    style:
                        const TextStyle(color: AppColors.black, fontSize: 18),
                  ),
                  const SizedBox(
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
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(16),
                            child: const FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: AppColors.black,
                              size: 16,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Flexible(
                          child: Text(
                        "Перейти на другой урок",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.black, fontSize: 18),
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CupertinoButton(
                            padding: const EdgeInsets.all(0),
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(16),
                            child: const FaIcon(
                              FontAwesomeIcons.arrowRight,
                              color: AppColors.black,
                              size: 16,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ActionButton(
                      reverseColor: true,
                      child: const Text(
                        "Закрыть",
                        style: TextStyle(
                            color: AppColors.black,
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

  void routeNextUnit() {
    setState(() {
      if (activeUnitIndex + 1 != widget.units.length) {
        setState(() {
          activeUnitIndex++;
        });

        changeActivePage(0);

        updateScreens();
      } else {
        Navigator.pop(context);
      }
    });
  }
}
