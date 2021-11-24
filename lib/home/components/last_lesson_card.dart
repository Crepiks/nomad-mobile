import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/components/common_button.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/unit.dart';
import 'package:nomad/units/views/unit_view.dart';

class LastLessonCard extends StatelessWidget {
  const LastLessonCard({Key? key, required this.units}) : super(key: key);

  final List<Unit> units;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage("assets/images/last-lesson-card-image.png"),
              scale: 3.2,
              alignment: Alignment(1, 2.4))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Пройдите урок и заработайте огоньки",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Ваш последний урок:",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.2, fontSize: 16),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const Text(
                  "Окончания — Урок 1. -МЫН/МІН/-СЫҢ/-СІҢ/-СЫЗ/-СІЗ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      height: 1.2, fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(height: 14),
              CommonButton(
                text: "К уроку",
                reverseColor: true,
                onClick: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>
                              UnitView(units: units, index: 0)));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
