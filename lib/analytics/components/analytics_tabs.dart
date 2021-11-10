import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class AnalyticsTabs extends StatelessWidget {
  final int activeIndex;
  final dynamic onActiveIndexChange;

  const AnalyticsTabs(
      {Key? key, required this.activeIndex, required this.onActiveIndexChange})
      : super(key: key);

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
          AnalyticsTab(
              onClick: () {
                onActiveIndexChange(0);
              },
              active: activeIndex == 0,
              text: "Статистика"),
          AnalyticsTab(
              onClick: () {
                onActiveIndexChange(1);
              },
              active: activeIndex == 1,
              text: "Рейтинг")
        ],
      ),
    );
  }
}

class AnalyticsTab extends StatelessWidget {
  const AnalyticsTab({
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
