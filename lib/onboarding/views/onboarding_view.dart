import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/layouts/safe_area_layout.dart';
import 'package:nomad/onboarding/views/components/login_button.dart';
import 'package:nomad/onboarding/views/components/register_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
        backgroundColor: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        "Приложение для изучения казахского",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Image(
                        image:
                            const AssetImage('assets/images/welcome-image.png'),
                        width: MediaQuery.of(context).size.width * 0.8,
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LoginButton(),
                    SizedBox(
                      height: 12,
                    ),
                    RegisterButton()
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
