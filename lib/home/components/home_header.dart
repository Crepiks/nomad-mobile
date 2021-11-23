import 'package:flutter/material.dart';
import 'package:nomad/data/models/user.dart';
import 'package:nomad/home/components/score_button.dart';
import 'package:nomad/home/components/user_info.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader(
      {Key? key,
      required this.onScoreButtonClick,
      required this.user,
      required this.score})
      : super(key: key);

  final int score;
  final Function onScoreButtonClick;
  final User user;

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserInfo(
            firstName: widget.user.firstName,
            lastName: widget.user.lastName,
            hasSubscription: widget.user.hasSubscription,
          ),
          ScoreButton(score: widget.score, onClick: widget.onScoreButtonClick)
        ],
      ),
    );
  }
}
