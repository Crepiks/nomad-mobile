import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key, required this.changeActiveIndex}) : super(key: key);

  final Function changeActiveIndex;

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Tab(
              onClick: () {
                setState(() {
                  activeIndex = 0;
                });

                widget.changeActiveIndex(0);
              },
              active: activeIndex == 0,
              text: "Теория"),
          Tab(
              onClick: () {
                setState(() {
                  activeIndex = 1;
                });

                widget.changeActiveIndex(1);
              },
              active: activeIndex == 1,
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
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          decoration: active
              ? const BoxDecoration(
                  color: AppColors.primaryColor60,
                  borderRadius: BorderRadius.all(Radius.circular(20)))
              : null,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            ),
          ),
        ),
      ),
    );
  }
}
