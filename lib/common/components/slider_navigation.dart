import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';

class SliderNavigation extends StatelessWidget {
  const SliderNavigation(
      {Key? key, required this.slidesNumber, required this.activeSlideIndex})
      : super(key: key);

  final int slidesNumber;
  final int activeSlideIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < slidesNumber; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: _buildNavigationButton(active: i == activeSlideIndex),
          )
      ],
    );
  }

  Widget _buildNavigationButton({required bool active}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: active ? 14 : 13,
        height: active ? 14 : 13,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                active ? AppColors.primary : AppColors.black.withOpacity(0.1)),
      ),
    );
  }
}
