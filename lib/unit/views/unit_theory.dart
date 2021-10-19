import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class UnitTheory extends StatelessWidget {
  const UnitTheory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List theoryTexts = [
      "Менің атым – Әсел",
      "Мен – студентпін",
      "Мен –  жиырма екідемін",
      "Менің сүйікті түсім  – көк",
      "Мен – Қазақстандықпын",
      "Мен Алматыданмын",
      "Менің сүйікті спортым – футбол мен  жүзу",
      "Менің әкем – дәрігер,  анам – журналист",
      "Мен өнерге қызығамын",
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  "-МЫН/-МІН/-СЫҢ/-СІҢ/-СЫЗ/-СІЗ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.blackColor80,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 1.2),
                ),
              ),
              SizedBox(height: 30),
              Image(image: AssetImage("assets/images/theory-image.png")),
              SizedBox(height: 30),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: theoryTexts
                      .map((text) => Column(
                            children: [
                              Text(text,
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 20,
                                      height: 1.3)),
                              SizedBox(height: 5)
                            ],
                          ))
                      .toList())
            ],
          )),
    );
  }
}
