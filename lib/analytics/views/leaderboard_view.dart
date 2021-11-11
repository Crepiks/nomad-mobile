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
        LeaderboardCard(
            active: true,
            name: "Саяжан Онласын",
            location: "Нур-Султан, Казахстан",
            rating: 40),
        SizedBox(
          height: 10,
        ),
        LeaderboardCard(
            name: "Саяжан Онласын",
            location: "Нур-Султан, Казахстан",
            rating: 70),
        SizedBox(
          height: 10,
        ),
        LeaderboardCard(
            name: "Саяжан Онласын",
            location: "Нур-Султан, Казахстан",
            rating: 40),
        SizedBox(
          height: 10,
        ),
        LeaderboardCard(
            name: "Саяжан Онласын",
            location: "Нур-Султан, Казахстан",
            rating: 30),
        SizedBox(
          height: 10,
        ),
        LeaderboardCard(
            name: "Саяжан Онласын",
            location: "Нур-Султан, Казахстан",
            rating: 20),
        SizedBox(
          height: 10,
        ),
        LeaderboardCard(
            name: "Саяжан Онласын",
            location: "Нур-Султан, Казахстан",
            rating: 6),
      ],
    );
  }
}
