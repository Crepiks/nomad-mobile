import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';

class ProfileActionLink extends StatelessWidget {
  const ProfileActionLink(
      {Key? key, required this.text, required this.icon, required this.onClick})
      : super(key: key);

  final String text;
  final Widget icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        onClick();
      },
      padding: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 24,
                  child: Center(child: icon),
                ),
                const SizedBox(width: 12),
                Text(
                  text,
                  style:
                      const TextStyle(fontSize: 18, color: AppColors.greyColor),
                )
              ],
            ),
            const FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: AppColors.greyColor,
            )
          ],
        ),
      ),
    );
  }
}
