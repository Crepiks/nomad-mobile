import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: AppColors.primary),
        child: const Center(
            child: Text(
          "Nomad",
          style: TextStyle(
              color: AppColors.black,
              fontSize: 50,
              fontWeight: FontWeight.w900),
        )),
      ),
    );
  }
}
