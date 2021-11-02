import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/unit/unit.dart';
import 'package:nomad/home/views/components/units/unit_card.dart';
import 'package:nomad/layouts/unit_layout.dart';

class UnitsList extends StatelessWidget {
  const UnitsList({Key? key, required this.units}) : super(key: key);

  final List<Unit> units;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Уроки раздела",
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: units.length,
                itemBuilder: (BuildContext context, int index) {
                  return UnitCard(
                      title: units[index].theory.title,
                      onClick: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => UnitLayout(
                                    unit: units[index],
                                  ))));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
