import 'package:flutter/material.dart';
import 'package:nomad/analytics/components/leaderboard_card.dart';

class LeaderboardView extends StatefulWidget {
  const LeaderboardView({Key? key}) : super(key: key);

  @override
  _LeaderBoardViewState createState() => _LeaderBoardViewState();
}

class _LeaderBoardViewState extends State<LeaderboardView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LeaderboardCard(),
        SizedBox(
          height: 14,
        ),
        LeaderboardCard(),
        SizedBox(
          height: 14,
        ),
        LeaderboardCard(),
        SizedBox(
          height: 14,
        ),
        LeaderboardCard(),
        SizedBox(
          height: 14,
        ),
        LeaderboardCard()
      ],
    );
  }
}
