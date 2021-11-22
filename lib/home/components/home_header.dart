import 'package:flutter/material.dart';
import 'package:nomad/home/components/score_button.dart';
import 'package:nomad/home/components/user_info.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key, required this.onScoreButtonClick}) : super(key: key);

  final Function onScoreButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const UserInfo(), ScoreButton(onClick: onScoreButtonClick)],
      ),
    );
  }
}
