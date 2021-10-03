import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/common/colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: borderColor),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/avatar.png')))),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Саяжан Онласын",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Стандартный план",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.7)),
              )
            ],
          )
        ],
      ),
    );
  }
}
