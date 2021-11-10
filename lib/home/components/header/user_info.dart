import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/avatar.png')))),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Саяжан Онласын",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor),
            ),
            Text(
              "Стандартный план",
              style: TextStyle(fontSize: 14, color: AppColors.blackColor80),
            ),
          ],
        )
      ],
    );
  }
}
