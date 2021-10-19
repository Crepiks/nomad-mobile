import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/home/views/components/header.dart';
import 'package:nomad/home/views/components/progress_chart.dart';
import 'package:nomad/home/views/components/repeat_card.dart';
import 'package:nomad/layouts/unit_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Header(),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: ProgressChart(),
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
              SizedBox(width: 20),
              GestureDetector(
                onTap: () => {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => UnitLayout()))
                },
                child: RepeatCard(
                  title: "Местоимения",
                  description:
                      "самостоятельная часть речи, которая указывает на предметы, признаки, количество, но не называет их",
                ),
              ),
              SizedBox(width: 10),
              RepeatCard(
                title: "Местоимения",
                description:
                    "самостоятельная часть речи, которая указывает на предметы, признаки, количество, но не называет их",
              ),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
