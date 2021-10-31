import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';

class UnitCard extends StatelessWidget {
  const UnitCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CupertinoButton(
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: (size.width * 0.8) - 40 - 48,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: AppColors.blackColor80, fontSize: 17),
              ),
            ),
            FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 14,
              color: AppColors.blackColor60,
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
