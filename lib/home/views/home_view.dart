import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/data/models/input_question.model.dart';
import 'package:nomad/data/models/match_question.model.dart';
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
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => UnitLayout(
                                questionIndex: 1,
                                questionTitle:
                                    "Бір жолға жуан, бір жолға жіңішке жалғауды жалғап бөліп жазыңыз.",
                                questionSubtitle:
                                    "жуан: мен бала+мын, сен аға+сың,.......... жіңішке:сіз әке+сіз, сен жігітсің,............",
                                questionType: "input",
                                questions: [
                                  InputQuestion("Мен мұғалім", ""),
                                  InputQuestion("Сен оқушы", ""),
                                  InputQuestion("Сіз ана", ""),
                                  InputQuestion("Сен спортшы", ""),
                                  InputQuestion("Сіз әнші", ""),
                                  InputQuestion("Мен қыз", ""),
                                ],
                              )))
                },
                child: RepeatCard(
                  title: "Местоимения",
                  description:
                      "самостоятельная часть речи, которая указывает на предметы, признаки, количество, но не называет их",
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => UnitLayout(
                            questionTitle: "Сұрақтың дұрыс жауабын табыңыз",
                            questionType: "match",
                            questions: [
                              MatchQuestion(NumberQuestion(1, "Камера қайда?"),
                                  LetterAnswer("Б", "Менің әпкем")),
                              MatchQuestion(NumberQuestion(2, "Айдана Тараздан ба?"),
                                  LetterAnswer("A", "Иә, Таразда")),
                              MatchQuestion(NumberQuestion(3, "Алматы қайда?"),
                                  LetterAnswer("Ә", "Онтустыкте")),
                              MatchQuestion(NumberQuestion(4, "Айбра Алматыда ма?"),
                                  LetterAnswer("В", "Иә, Алматыда"))
                            ],
                            questionIndex: 3))),
                child: RepeatCard(
                  title: "Местоимения",
                  description:
                      "самостоятельная часть речи, которая указывает на предметы, признаки, количество, но не называет их",
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
