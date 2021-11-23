import 'package:flutter/material.dart';
import 'package:nomad/analytics/components/leaderboard_card.dart';
import 'package:nomad/store/score.dart';

class LeaderboardView extends StatefulWidget {
  const LeaderboardView({Key? key}) : super(key: key);

  @override
  _LeaderBoardViewState createState() => _LeaderBoardViewState();
}

class _LeaderBoardViewState extends State<LeaderboardView> {
  int score = 0;

  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 60),
          LeaderboardCard(
              active: true,
              name: "Саяжан Онласын",
              location: "Нур-Султан, Казахстан",
              rating: score),
          const SizedBox(
            height: 10,
          ),
          LeaderboardCard(
              name: "Саяжан Онласын",
              location: "Нур-Султан, Казахстан",
              rating: score),
        ],
      ),
    );
  }

  _loadScore() async {
    final score = await getScore();
    setState(() {
      this.score = score;
    });
  }
}
