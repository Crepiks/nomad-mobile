import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/button.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(22),
          image: DecorationImage(
              image: AssetImage("assets/images/premium-card-image.png"),
              scale: 4,
              alignment: Alignment(1.5, -0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: (MediaQuery.of(context).size.width - 40 - 44) * 0.75,
            child: Text(
              "Оформите премиум план и получите доступ ко всем разделам",
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 18),
          Button(
            text: "Оформить подписку",
            onClick: () {},
            reverseColor: true,
          )
        ],
      ),
    );
  }
}
