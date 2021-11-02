import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/layouts/components/unit_tabs.dart';

class UnitHeader extends StatelessWidget {
  const UnitHeader(
      {Key? key, required this.changeActiveIndex, required this.activeIndex})
      : super(key: key);

  final int activeIndex;
  final Function changeActiveIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          HeaderButton(
            icon: FontAwesomeIcons.arrowLeft,
            onClick: () => {Navigator.pop(context)},
          ),
          SizedBox(width: 10),
          Expanded(
              child: Tabs(
            activeIndex: activeIndex,
            changeActiveIndex: (newActiveIndex) =>
                changeActiveIndex(newActiveIndex),
          )),
          SizedBox(width: 10),
          HeaderButton(
            icon: FontAwesomeIcons.syncAlt,
            onClick: () => {},
          ),
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  const HeaderButton({Key? key, required this.icon, required this.onClick})
      : super(key: key);

  final IconData icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: CupertinoButton(
        padding: EdgeInsets.all(0),
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        child: FaIcon(
          icon,
          color: AppColors.blackColor80,
          size: 16,
        ),
        onPressed: () => onClick(),
      ),
    );
  }
}
