import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/renderers/score_comparison.dart';
import 'package:nomad/data/models/user.dart';
import 'package:nomad/data/models/user_score.dart';
import 'package:nomad/home/components/home_header.dart';
import 'package:nomad/home/components/progress_chart.dart';
import 'package:nomad/home/components/repeat_card.dart';

typedef ActiveTabChange = void Function(int index);

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required this.navigateToPage, required this.user})
      : super(key: key);

  final Function navigateToPage;
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: HomeHeader(
            user: user,
            onScoreButtonClick: () {
              buildScoreSheet(context, (pageIndex) {
                navigateToPage(pageIndex);
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
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Text(
            "Повторение",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () => {},
                child: const RepeatCard(
                  title: "Местоимения",
                  description:
                      "самостоятельная часть речи, которая указывает на предметы, признаки, количество, но не называет их",
                ),
              ),
              const SizedBox(width: 14),
              GestureDetector(
                onTap: () {},
                child: const RepeatCard(
                  title: "Местоимения",
                  description:
                      "самостоятельная часть речи, которая указывает на предметы, признаки, количество, но не называет их",
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}

buildScoreSheet(BuildContext context, Function navigateToPage) {
  List<UserScore> leaderboardUsers = [
    UserScore(
        "Айтбеков Сапабек", "assets/images/user-score-avatar-2.png", 80, false),
    UserScore(
        "Кажимухан Азат", "assets/images/user-score-avatar-1.png", 60, true),
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
