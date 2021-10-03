import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: const Center(
        child: FaIcon(FontAwesomeIcons.bell),
      ),
    );
  }
}
