import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:nomad/auth/views/login_view.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/common/components/common_slider.dart';
import 'package:nomad/common/components/slider_navigation.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/slide.dart';
import 'package:nomad/layouts/safe_area_layout.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int activeSlideIndex = 0;

  @override
  void initState() {
    super.initState();

    activeSlideIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    List<Slide> slides = [
      Slide("assets/images/slider-image-1.png",
          "Изучайте казахский язык прямо в приложении"),
      Slide("assets/images/slider-image-2.png",
          "Читайте теорию и выполняйте интерактивные задания"),
      Slide("assets/images/slider-image-3.png",
          "Зарабатывайте огоньки и поднимайся в рейтинге пользователей")
    ];

    return SafeAreaLayout(
        backgroundColor: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                        child: CommonSlider(
                      slides: slides,
                      onChangePage: (newSlideIndex) {
                        setActiveSlideIndex(newSlideIndex);
                      },
                    )),
                    SliderNavigation(
                        slidesNumber: slides.length,
                        activeSlideIndex: activeSlideIndex)
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: _buildStartButton()),
          ],
        ));
  }

  void setActiveSlideIndex(index) {
    setState(() {
      activeSlideIndex = index;
    });
  }

  Widget _buildStartButton() {
    return ActionButton(
      child: const Text(
        "Начать",
        style: TextStyle(
            color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      onClick: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (context) => const LoginView()));
      },
    );
  }
}
