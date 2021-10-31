import "package:flutter/material.dart";
import 'package:nomad/data/models/chapter.dart';
import 'package:nomad/home/views/components/chapters/chapters_list.dart';
import 'package:nomad/home/views/components/header.dart';
import 'package:nomad/home/views/components/units/units_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int activeChapterIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Chapter> chapters = Chapter.findAll();

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
          UnitsList(units: chapters[activeChapterIndex].units)
        ],
      ),
    );
  }

  setActiveChapterIndex(index) {
    setState(() {
      activeChapterIndex = index;
      print(activeChapterIndex);
    });
  }
}
