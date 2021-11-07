import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.pop(context)},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.arrowLeft,
              size: 16,
              color: AppColors.primaryColor,
            ),
            SizedBox(width: 10),
            Text(
              "Назад",
              style: TextStyle(color: AppColors.primaryColor, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
