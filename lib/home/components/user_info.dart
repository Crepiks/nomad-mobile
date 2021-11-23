import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.hasSubscription})
      : super(key: key);

  final String firstName;
  final String lastName;
  final bool hasSubscription;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/mock-user-avatar.png')))),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$firstName $lastName",
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black),
            ),
            Text(
              hasSubscription ? "Nomad Premium" : "Стандартный план",
              style: const TextStyle(fontSize: 14, color: AppColors.black),
            ),
          ],
        )
      ],
    );
  }
}
