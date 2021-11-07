import 'package:flutter/cupertino.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import '../login_view.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionButton(
      child: const Text(
        "Начать",
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 18,
            fontWeight: FontWeight.w500),
      ),
      onClick: () => {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => LoginView()))
      },
    );
  }
}
