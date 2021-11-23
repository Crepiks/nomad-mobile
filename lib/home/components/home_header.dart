import 'package:flutter/material.dart';
import 'package:nomad/home/components/score_button.dart';
import 'package:nomad/home/components/user_info.dart';

class HomeHeader extends StatelessWidget {
  final int score;
  final Function onScoreButtonClick;

  const HomeHeader(
      {Key? key, required this.score, required this.onScoreButtonClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const UserInfo(),
          ScoreButton(score: score, onClick: onScoreButtonClick)
        ],
      ),
    );
  }
}
