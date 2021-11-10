import 'package:flutter/material.dart';
import 'package:nomad/home/views/components/header/score_button.dart';
import 'package:nomad/home/views/components/header/user_info.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [UserInfo(), ScoreButton()],
      ),
    );
  }
}
