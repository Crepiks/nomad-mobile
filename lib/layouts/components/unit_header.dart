import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/layouts/components/unit_tabs.dart';

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
            activeIndex: activePageIndex,
            changeActiveIndex: (newActiveIndex) =>
                changeActivePageIndex(newActiveIndex),
          )),
          SizedBox(width: 10),
          SizedBox(
            height: 60,
            width: 60,
            child: CupertinoButton(
                color: AppColors.whiteColor,
                padding: EdgeInsets.all(0),
                borderRadius: BorderRadius.circular(20),
                child: Text("···",
                    style: TextStyle(
                        color: AppColors.blackColor80,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                onPressed: () => {onClickExtraFunctions()}),
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
