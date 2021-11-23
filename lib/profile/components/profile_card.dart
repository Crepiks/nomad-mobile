import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/common/constants/app_colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard(
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.border),
          borderRadius: const BorderRadius.all(Radius.circular(22))),
      child: Row(
        children: [
          Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image:
                          AssetImage('assets/images/mock-user-avatar.png')))),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$firstName $lastName",
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                hasSubscription ? "Nomad Premium" : "Стандартный план",
                style: const TextStyle(fontSize: 14, color: AppColors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
