import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/layouts/safe_area_layout.dart';
import 'package:nomad/onboarding/views/login_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
        backgroundColor: AppColors.whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Приложение для изучения казахского",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Image(
                        image: AssetImage('assets/images/welcome-image.png'),
                        width: MediaQuery.of(context).size.width * 0.8,
                      )
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ActionButton(
                        child: Text(
                          "У меня есть аккаунт",
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        reverseColor: true,
                        onClick: () => {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => const LoginView()))
                            }),
                    SizedBox(
                      height: 12,
                    ),
                    ActionButton(
                      child: Text(
                        "Начать",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () => {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const LoginView()))
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SafeAreaLayout(
  //     backgroundColor: AppColors.whiteColor,
  //       child: Stack(
  //     children: [
  //       Column(
  //         children: [
  //           Container(
  //             padding: const EdgeInsets.only(top: 40, bottom: 40),
  //             child: const Image(
  //               image: AssetImage('assets/images/man-on-moon.png'),
  //             ),
  //           ),
  //           const Text("Давай учить казахский вместе!",
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 34,
  //                   fontWeight: FontWeight.w600)),
  //           const SizedBox(
  //             height: 14,
  //           ),
  //           const Text(
  //             "Методика интервального повторения и интерактивные упражнения помогут Вам быстро изучить казахский язык",
  //             style: TextStyle(color: Colors.white, fontSize: 18),
  //           ),
  //         ],
  //       ),
  //       SizedBox(
  //           width: double.infinity,
  //           child: CupertinoButton(
  //               padding: const EdgeInsets.symmetric(vertical: 24),
  //               color: Colors.white,
  //               borderRadius: const BorderRadius.all(Radius.circular(16)),
  //               child: const Text(
  //                 "Начать учиться",
  //                 style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 18,
  //                     fontWeight: FontWeight.w500),
  //               ),
  //               onPressed: () {
  //                 Navigator.pushReplacement(
  //                     context,
  //                     CupertinoPageRoute(
  //                         builder: (context) => const LoginView()));
  //               }))
  //     ],
  //   ));
  // }
}
