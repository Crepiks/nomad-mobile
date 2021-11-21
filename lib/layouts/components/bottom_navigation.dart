import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';

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
            const EdgeInsets.only(right: 40, left: 40, top: 18, bottom: 34),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(26), topLeft: Radius.circular(26)),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: activeIndex == 0
                      ? AppColors.primary.withOpacity(0.1)
                      : null,
                  shape: BoxShape.circle),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    _vibrate();
                    onItemClick(0);
                  },
                  icon: FaIcon(FontAwesomeIcons.home,
                      size: iconSize,
                      color: activeIndex == 0
                          ? AppColors.primary
                          : defaultIconColor),
                ),
              )),
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: activeIndex == 1
                      ? AppColors.primary.withOpacity(0.1)
                      : null,
                  shape: BoxShape.circle),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    _vibrate();
                    onItemClick(1);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.chartPie,
                    size: iconSize,
                    color:
                        activeIndex == 1 ? AppColors.primary : defaultIconColor,
                  ),
                ),
              )),
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: activeIndex == 2
                      ? AppColors.primary.withOpacity(0.1)
                      : null,
                  shape: BoxShape.circle),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    _vibrate();
                    onItemClick(2);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.book,
                    size: iconSize,
                    color:
                        activeIndex == 2 ? AppColors.primary : defaultIconColor,
                  ),
                ),
              )),
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: activeIndex == 3
                      ? AppColors.primary.withOpacity(0.1)
                      : null,
                  shape: BoxShape.circle),
              child: Center(
                  child: IconButton(
                onPressed: () {
                  _vibrate();
                  onItemClick(3);
                },
                icon: FaIcon(
                  FontAwesomeIcons.solidUser,
                  size: iconSize,
                  color:
                      activeIndex == 3 ? AppColors.primary : defaultIconColor,
                ),
              )))
        ]));
  }

  _vibrate() {
    HapticFeedback.mediumImpact();
  }
}
