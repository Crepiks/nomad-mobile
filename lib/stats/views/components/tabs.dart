import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class Tabs extends StatelessWidget {
  final int activeIndex;
  final dynamic onTabClick;

  Tabs({Key? key, required this.activeIndex, required this.onTabClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                onTabClick(0);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                decoration: activeIndex == 0
                    ? const BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)))
                    : null,
                child: const Center(
                  child: Text(
                    "Статистика",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    onTabClick(1);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 20),
                    decoration: activeIndex == 1
                        ? const BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)))
                        : null,
                    child: const Center(
                      child: Text(
                        "Рейтинг",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
