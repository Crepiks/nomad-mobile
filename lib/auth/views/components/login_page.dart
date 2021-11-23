import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:nomad/common/components/common_input.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/layouts/main_layout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginButtonLoading = false;
  String phoneNumber = "";
  String password = "";

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
                  updateValue: (text) {
                    _setPhoneNumber(text);
                  }),
              const SizedBox(
                height: 20,
              ),
              CommonInput(
                  title: "Пароль",
                  hintText: "Введите пароль",
                  passwordInput: true,
                  hasTitle: true,
                  updateValue: (text) {
                    _setPassword(text);
                  }),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
          child: _buildLoginButton(onClick: () async {
            if (phoneNumber.trim() != "" && password.trim() != "") {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setBool("isLoggedIn", true);

              if (prefs.getString("phoneNumber") == phoneNumber &&
                  prefs.getString("password") == password) {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => const MainLayout()),
                    (route) => false);
              } else {
                _showErrorSnackBar(
                    title: "Неверные данные",
                    message:
                        "Проверьте номер телефона и пароль, что-то из них неверное");
              }
            } else {
              _showErrorSnackBar(
                  title: "Заполните все поля",
                  message: "Для входа нам нужен ваш номер телефона и пароль");
            }
          }),
        )
      ],
    );
  }

  _setPhoneNumber(value) {
    setState(() {
      phoneNumber = value;
    });
  }

  _setPassword(value) {
    setState(() {
      password = value;
    });
  }

  _showErrorSnackBar({required String title, required String message}) {
    Get.snackbar("", "",
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        titleText: Text(title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.white)),
        messageText: Text(
          message,
          style: const TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.error,
        animationDuration: const Duration(milliseconds: 200));
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
