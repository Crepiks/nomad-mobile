import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class Tabs extends StatefulWidget {
  const Tabs(
      {Key? key, required this.changeActiveIndex, required this.activeIndex})
      : super(key: key);

  final int activeIndex;
  final Function changeActiveIndex;

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Tab(
              onClick: () {
                widget.changeActiveIndex(0);
              },
              active: widget.activeIndex == 0,
              text: "Теория"),
          Tab(
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

class Tab extends StatelessWidget {
  const Tab({
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
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(14)))
              : null,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: AppColors.blackColor),
            ),
          ),
        ),
      ),
    );
  }
}
