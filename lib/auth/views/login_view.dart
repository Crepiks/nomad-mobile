import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/auth/views/components/login_button.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/common_back_button.dart';
import 'package:nomad/common/components/common_input.dart';
import 'package:nomad/layouts/safe_area_layout.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
        backgroundColor: AppColors.whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const CommonBackButton(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      "С возвращением!\nМы скучали😊",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          height: 1.3),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CommonInput(
                      title: "Телефон",
                      hintText: "+7 (XXX) XXX XX XX",
                      phoneInput: true,
                      hasTitle: true,
                      updateValue: (text) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonInput(
                      title: "Пароль",
                      hintText: "Введите пароль",
                      passwordInput: true,
                      hasTitle: true,
                      updateValue: (text) {})
                ],
              ),
              const Padding(
                  padding: EdgeInsets.only(bottom: 30), child: LoginButton()),
            ],
          ),
        ));
  }
}
