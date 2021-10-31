import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/questions/match_question.model.dart';
import 'package:nomad/data/models/unit.dart';
import 'package:nomad/home/views/components/units/unit_card.dart';
import 'package:nomad/layouts/unit_layout.dart';

class UnitsList extends StatelessWidget {
  const UnitsList({Key? key, required this.units}) : super(key: key);

  final List<Unit> units;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Уроки раздела",
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: units.length,
                itemBuilder: (BuildContext context, int index) {
                  return UnitCard(
                      title: units[index].theory.title,
                      onClick: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => UnitLayout(
                                  questionTitle:
                                      "Сұрақтың дұрыс жауабын табыңыз",
                                  questionType: "match",
                                  questions: [
                                    MatchQuestion(
                                        NumberQuestion(1, "Камера қайда?"),
                                        LetterAnswer("Б", "Менің әпкем")),
                                    MatchQuestion(
                                        NumberQuestion(
                                            2, "Айдана Тараздан ба?"),
                                        LetterAnswer("A", "Иә, Таразда")),
                                    MatchQuestion(
                                        NumberQuestion(3, "Алматы қайда?"),
                                        LetterAnswer("Ә", "Онтустыкте")),
                                    MatchQuestion(
                                        NumberQuestion(4, "Айбра Алматыда ма?"),
                                        LetterAnswer("В", "Иә, Алматыда"))
                                  ],
                                  questionIndex: 3))));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
