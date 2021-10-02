import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40, bottom: 40),
                    child: const Image(
                      image: AssetImage('assets/images/man-on-moon.png'),
                    ),
                  ),
                  const Text("Давай учить казахский вместе!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Методика интервального повторения и интерактивные упражнения помогут Вам быстро изучить казахский язык",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Начать учиться",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                          FaIcon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.black,
                            size: 20,
                          )
                        ],
                      ),
                      onPressed: () {}))
            ],
          ),
        )));
  }
}
