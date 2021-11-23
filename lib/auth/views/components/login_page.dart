import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/components/common_input.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/layouts/main_layout.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const Text(
                "С возвращением, мы успели соскучиться",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    height: 1.3),
              ),
              const SizedBox(
                height: 40,
              ),
              CommonInput(
                  title: "Номер телефона",
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
                  updateValue: (text) {}),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
          child: _buildLoginButton(onClick: () {
            Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) => const MainLayout()),
                (route) => false);
          }),
        )
      ],
    );
  }

  Widget _buildLoginButton({required Function onClick}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Войти",
              style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
          CupertinoButton(
            onPressed: () {
              onClick();
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primary),
              child: const Center(
                child: Image(
                  image: AssetImage("assets/images/long-arrow.png"),
                  width: 30,
                ),
              ),
            ),
          ),
        ]);
  }
}
