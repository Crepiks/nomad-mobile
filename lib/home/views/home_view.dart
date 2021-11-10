import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/home/components/home_header.dart';
import 'package:nomad/home/components/progress_chart.dart';
import 'package:nomad/home/components/repeat_card.dart';

typedef ActiveTabChange = void Function(int index);

class HomeView extends StatelessWidget {
  final ActiveTabChange onActiveTabChange;

  const HomeView({Key? key, required this.onActiveTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: HomeHeader(),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: ProgressChart(
            onShowMoreTap: () {
              const analyticsTabIndex = 1;
              onActiveTabChange(analyticsTabIndex);
            },
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
              const SizedBox(width: 10),
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
