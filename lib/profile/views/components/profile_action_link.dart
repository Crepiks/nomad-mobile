import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';

class ProfileActionLink extends StatelessWidget {
  final String text;
  final Widget icon;

  const ProfileActionLink(
      {Key? key,
      required this.text,
      this.icon = const FaIcon(
        FontAwesomeIcons.userEdit,
        size: 20,
        color: AppColors.primaryColor,
      )})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                style: const TextStyle(fontSize: 18, color: Color(0xFFAAAAAA)),
              )
            ],
          ),
          const FaIcon(
            FontAwesomeIcons.chevronRight,
            size: 16,
            color: Color(0xFFAAAAAA),
          )
        ],
      ),
    );
  }
}
