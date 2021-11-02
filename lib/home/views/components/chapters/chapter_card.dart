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
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
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
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  maxLines: 3,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: AppColors.whiteColor,
                      fontSize: 15,
                      height: 1.3),
                )
              ],
            ),
          ),
          ProgressBar(unitsNumber: 100, completedUnitsNumber: 60)
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
          color: Color(0xFFEFA80E), borderRadius: BorderRadius.circular(20)),
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
