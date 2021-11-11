import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/unit/unit.dart';
import 'package:nomad/layouts/unit_layout.dart';
import 'package:nomad/lessons/components/units/unit_card.dart';

class UnitsList extends StatelessWidget {
  final List<Unit> units;

  const UnitsList({Key? key, required this.units}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Уроки раздела",
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(0),
                physics: const BouncingScrollPhysics(),
                itemCount: units.length,
                itemBuilder: (context, index) {
                  final unit = units[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: UnitCard(
                        title: unit.theory.title,
                        onClick: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => UnitLayout(
                                      units: units,
                                      index: index,
                                    )))),
                  );
                })),
      ],
    );
  }
}