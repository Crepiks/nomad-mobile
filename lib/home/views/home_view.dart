import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/renderers/score_comparison.dart';
import 'package:nomad/data/mock/mock.dart';
import 'package:nomad/data/models/chapter.dart';
import 'package:nomad/data/models/user.dart';
import 'package:nomad/data/models/user_score.dart';
import 'package:nomad/home/components/home_header.dart';
import 'package:nomad/home/components/last_lesson_card.dart';
import 'package:nomad/home/components/progress_chart.dart';
import 'package:nomad/store/score.dart';

typedef ActiveTabChange = void Function(int index);

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.navigateToPage, required this.user})
      : super(key: key);

  final Function navigateToPage;
  final User user;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int score = 0;

  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  @override
  Widget build(BuildContext context) {
    List<Chapter> chapters = MockChapters.findAll();

    return ListView(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: HomeHeader(
            user: widget.user,
            score: score,
            onScoreButtonClick: () {
              buildScoreSheet(context, (pageIndex) {
                widget.navigateToPage(pageIndex);
              });
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: ProgressChart(
            onShowMoreTap: () {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: LastLessonCard(
            units: chapters[0].units,
          ),
        )
      ],
    );
  }

  _loadScore() async {
    final score = await getScore();
    setState(() {
      this.score = score;
    });
  }
}

buildScoreSheet(BuildContext context, Function navigateToPage) {
  List<UserScore> leaderboardUsers = [
    UserScore(
        "Айтбеков Сапабек", "assets/images/user-score-avatar-2.png", 80, false),
    UserScore("Онласын Саяжан", "assets/images/mock-user-avatar.png", 60, true),
    UserScore(
        "Каримов Санжар", "assets/images/user-score-avatar-3.png", 50, false),
  ];

  return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
      builder: (BuildContext context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Вы на 14 месте из 46",
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ScoreComparison(users: leaderboardUsers),
                ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    const leaderboardPageIndex = 1;
                    navigateToPage(leaderboardPageIndex);
                  },
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Перейти к рейтингу",
                        style:
                            TextStyle(color: AppColors.primary, fontSize: 18),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      FaIcon(
                        FontAwesomeIcons.arrowRight,
                        size: 16,
                        color: AppColors.primary,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ActionButton(
                  reverseColor: true,
                  child: const Text(
                    "Закрыть",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  onClick: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ));
}
