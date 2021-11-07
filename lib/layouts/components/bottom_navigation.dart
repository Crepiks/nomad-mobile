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

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(right: 40, left: 40, top: 20, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(26), topLeft: Radius.circular(26)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 6,
              blurRadius: 20,
            ),
          ],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            onPressed: () {
              _vibrate();
              onItemClick(0);
            },
            icon: FaIcon(FontAwesomeIcons.home,
                size: iconSize,
                color: activeIndex == 0
                    ? AppColors.primaryColor
                    : defaultIconColor),
          ),
          IconButton(
            onPressed: () {
              _vibrate();
              onItemClick(1);
            },
            icon: FaIcon(
              FontAwesomeIcons.chartPie,
              size: iconSize,
              color:
                  activeIndex == 1 ? AppColors.primaryColor : defaultIconColor,
            ),
          ),
          IconButton(
            onPressed: () {
              _vibrate();
              onItemClick(2);
            },
            icon: FaIcon(
              FontAwesomeIcons.book,
              size: iconSize,
              color:
                  activeIndex == 2 ? AppColors.primaryColor : defaultIconColor,
            ),
          ),
          IconButton(
            onPressed: () {
              _vibrate();
              onItemClick(3);
            },
            icon: FaIcon(
              FontAwesomeIcons.solidUser,
              size: iconSize,
              color:
                  activeIndex == 3 ? AppColors.primaryColor : defaultIconColor,
            ),
          )
        ]));
  }

  _vibrate() {
    HapticFeedback.mediumImpact();
  }
}
