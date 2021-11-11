import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';

class LeaderboardCard extends StatelessWidget {
  final bool active;
  final String name;
  final String location;
  final int rating;

  const LeaderboardCard(
      {Key? key,
      this.active = false,
      required this.name,
      required this.location,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
          color: active ? AppColors.primaryColor : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Row(
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/avatar.png')))),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                rating.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: active ? Colors.black : AppColors.primaryColor,
                ),
              ),
              const SizedBox(width: 8),
              FaIcon(
                FontAwesomeIcons.fire,
                size: 18,
                color: active ? Colors.black : AppColors.primaryColor,
              ),
              const SizedBox(width: 6),
            ],
          ),
        ],
      ),
    );
  }
}
