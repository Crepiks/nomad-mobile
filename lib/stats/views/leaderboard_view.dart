import 'package:flutter/material.dart';

class LeaderBoardView extends StatefulWidget {
  const LeaderBoardView({Key? key}) : super(key: key);

  @override
  _LeaderBoardViewState createState() => _LeaderBoardViewState();
}

class _LeaderBoardViewState extends State<LeaderBoardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: const Center(
        child: Text("Leaderboard"),
      ),
    );
  }
}
