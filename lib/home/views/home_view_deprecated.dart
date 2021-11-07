import "package:flutter/material.dart";
import 'package:nomad/data/mock/mock.dart';
import 'package:nomad/data/models/chapter/chapter.dart';
import 'package:nomad/home/views/components/header.dart';

import 'components/chapters/chapters_list.dart';
import 'components/units/units_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int activeChapterIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Chapter> chapters = MockChapters.findAll();

    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Header(),
          ),
          SizedBox(height: 34),
          ChaptersList(
            chapters: chapters,
            onChangeChapter: (index) => {setActiveChapterIndex(index)},
          ),
          SizedBox(height: 30),
          UnitsList(units: chapters[activeChapterIndex].units),
          SizedBox(
            height: 90,
          )
        ],
      ),
    );
  }

  setActiveChapterIndex(index) {
    setState(() {
      activeChapterIndex = index;
    });
  }
}
