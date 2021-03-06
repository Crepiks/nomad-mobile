import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/common_button.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(22),
          image: const DecorationImage(
              image: AssetImage("assets/images/premium-card-image.png"),
              scale: 4,
              alignment: Alignment(1.5, -0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: (MediaQuery.of(context).size.width - 40 - 44) * 0.75,
            child: const Text(
              "Купите Nomad Premium и получите доступ ко всем разделам",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          CommonButton(
            text: "Купить Nomad Premium",
            onClick: () {},
            reverseColor: true,
          )
        ],
      ),
    );
  }
}
