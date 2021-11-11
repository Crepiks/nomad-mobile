import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({Key? key, required this.title, required this.description})
      : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              image: AssetImage("assets/images/chapter-card-image.png"),
              scale: 3,
              alignment: Alignment(1.8, -1.2))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width * 0.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  maxLines: 3,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                      height: 1.2),
                )
              ],
            ),
          ),
          const ProgressBar(unitsNumber: 100, completedUnitsNumber: 60)
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar(
      {Key? key, required this.unitsNumber, required this.completedUnitsNumber})
      : super(key: key);

  final int unitsNumber;
  final int completedUnitsNumber;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int cardMarginValue = 40;
    int cardPaddingMalue = 48;
    final double progressBarWidth =
        (size.width - cardPaddingMalue - cardMarginValue) *
            (completedUnitsNumber / unitsNumber);

    return Container(
      width: double.infinity,
      height: 16,
      decoration: BoxDecoration(
          color: const Color(0xFFEFA80E),
          borderRadius: BorderRadius.circular(20)),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: progressBarWidth,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
