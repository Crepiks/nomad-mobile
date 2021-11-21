import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';

class UnitTabs extends StatefulWidget {
  const UnitTabs(
      {Key? key, required this.changeActiveIndex, required this.activeIndex})
      : super(key: key);

  final int activeIndex;
  final Function changeActiveIndex;

  @override
  _UnitTabsState createState() => _UnitTabsState();
}

class _UnitTabsState extends State<UnitTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UnitTab(
              onClick: () {
                widget.changeActiveIndex(0);
              },
              active: widget.activeIndex == 0,
              text: "Теория"),
          UnitTab(
              onClick: () {
                widget.changeActiveIndex(1);
              },
              active: widget.activeIndex == 1,
              text: "Задания")
        ],
      ),
    );
  }
}

class UnitTab extends StatelessWidget {
  const UnitTab({
    Key? key,
    required this.onClick,
    required this.active,
    required this.text,
  }) : super(key: key);

  final Function onClick;
  final bool active;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => onClick(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: active
              ? const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.all(Radius.circular(14)))
              : null,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black),
            ),
          ),
        ),
      ),
    );
  }
}
