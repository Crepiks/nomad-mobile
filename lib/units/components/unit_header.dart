import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/units/components/unit_tabs.dart';

class UnitHeader extends StatelessWidget {
  const UnitHeader(
      {Key? key,
      required this.changeActivePageIndex,
      required this.activePageIndex,
      required this.onClickExtraFunctions})
      : super(key: key);

  final int activePageIndex;
  final Function changeActivePageIndex;
  final Function onClickExtraFunctions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          HeaderButton(
            icon: FontAwesomeIcons.arrowLeft,
            onClick: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Tabs(
            activeIndex: activePageIndex,
            changeActiveIndex: (newActiveIndex) =>
                changeActivePageIndex(newActiveIndex),
          )),
          const SizedBox(width: 10),
          HeaderButton(
            icon: FontAwesomeIcons.ellipsisH,
            onClick: () {
              onClickExtraFunctions();
            },
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
      width: 50,
      height: 50,
      child: CupertinoButton(
        padding: const EdgeInsets.all(0),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14),
        child: FaIcon(
          icon,
          color: AppColors.black,
          size: 20,
        ),
        onPressed: () => onClick(),
      ),
    );
  }
}
