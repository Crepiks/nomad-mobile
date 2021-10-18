import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/layouts/main_layout.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _phoneNumberTextFieldController =
      TextEditingController();
  final TextEditingController _passwordTextFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Войти",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Телефон",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CupertinoTextField(
                    controller: _phoneNumberTextFieldController,
                    placeholder: "+7 000 000 00 00",
                    padding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Пароль",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CupertinoTextField(
                    controller: _passwordTextFieldController,
                    placeholder: '∗∗∗∗∗∗∗∗∗',
                    padding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                  ),
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      color: AppColors.primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: const Text(
                        "Войти",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const MainLayout()));
                      }))
            ],
          ),
        )));
  }
}
