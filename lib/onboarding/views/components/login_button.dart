import 'package:flutter/cupertino.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import '../login_view.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionButton(
        child: const Text(
          "У меня есть аккаунт",
          style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        reverseColor: true,
        onClick: () => {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => LoginView()))
            });
  }
}
