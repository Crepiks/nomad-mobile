import 'package:flutter/cupertino.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/auth/views/login_view.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionButton(
      child: const Text(
        "Начать",
        style: TextStyle(
            color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      onClick: () {
        _navigateToRegisterScreen(context);
      },
    );
  }

  _navigateToRegisterScreen(BuildContext context) {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => const LoginView()));
  }
}
