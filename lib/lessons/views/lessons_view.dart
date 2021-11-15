import "package:flutter/material.dart";
import 'package:nomad/data/mock/mock.dart';
import 'package:nomad/data/models/chapter.dart';
import 'package:nomad/lessons/components/chapters_list.dart';
import 'package:nomad/lessons/components/units_list.dart';

class LessonsView extends StatefulWidget {
  const LessonsView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<LessonsView> {
  int activeChapterIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Chapter> chapters = MockChapters.findAll();

    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 60, bottom: 80),
      child: Column(
        children: [
          ChaptersList(
            chapters: chapters,
            onChangeChapter: (index) {
              _setActiveChapterIndex(index);
            },
          ),
          const SizedBox(height: 30),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: UnitsList(units: chapters[activeChapterIndex].units),
          ))
        ],
      ),
    );
  }

  _setActiveChapterIndex(index) {
    setState(() {
      activeChapterIndex = index;
    });
  }
}
