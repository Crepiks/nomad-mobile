import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/common/components/input.dart';
import 'package:nomad/layouts/main_layout.dart';
import 'package:nomad/layouts/safe_area_layout.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
        backgroundColor: AppColors.whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 25),
                    GestureDetector(
                      onTap: () => {Navigator.pop(context)},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              size: 16,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Назад",
                              style: TextStyle(
                                  color: AppColors.primaryColor, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "С возвращением! Войдите в аккаунт",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            height: 1.3),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Input(
                        title: "Номер телефона",
                        hintText: "+7 (000) 000 00-00",
                        phoneInput: true,
                        hasTitle: true,
                        updateValue: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                    Input(
                        title: "Пароль",
                        hintText: "Введите пароль",
                        passwordInput: true,
                        hasTitle: true,
                        updateValue: (text) {})
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: ActionButton(
                      child: Text(
                        "Войти",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () => {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => MainLayout()))
                          }),
                ),
              )
            ],
          ),
        ));
  }
}
