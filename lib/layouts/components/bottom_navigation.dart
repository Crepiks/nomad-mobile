import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';

const double iconSize = 26;
final defaultIconColor = Colors.black.withOpacity(0.5);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {Key? key, this.onItemClick, required this.activeIndex})
      : super(key: key);

  final dynamic onItemClick;
  final int activeIndex;

  vibrate() {
    HapticFeedback.mediumImpact();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 2,
              )
            ]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(0);
            },
            icon: FaIcon(FontAwesomeIcons.home,
                size: iconSize,
                color: activeIndex == 0 ? primaryColor : defaultIconColor),
          ),
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(1);
            },
            icon: FaIcon(
              FontAwesomeIcons.chartPie,
              size: iconSize,
              color: activeIndex == 1 ? primaryColor : defaultIconColor,
            ),
          ),
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(2);
            },
            icon: FaIcon(
              FontAwesomeIcons.book,
              size: iconSize,
              color: activeIndex == 2 ? primaryColor : defaultIconColor,
            ),
          ),
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(3);
            },
            icon: FaIcon(
              FontAwesomeIcons.solidUser,
              size: iconSize,
              color: activeIndex == 3 ? primaryColor : defaultIconColor,
            ),
          )
        ]));
  }
}
