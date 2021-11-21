import 'package:flutter/cupertino.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/auth/views/login_view.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionButton(
        child: const Text(
          "У меня есть аккаунт",
          style: TextStyle(
              color: AppColors.grey, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        reverseColor: true,
        onClick: () {
          _navigateToLoginScreen(context);
        });
  }

  _navigateToLoginScreen(BuildContext context) {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => const LoginView()));
  }
}
