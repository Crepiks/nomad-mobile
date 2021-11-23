import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/mock/mock.dart';
import 'package:nomad/data/models/chapter.dart';
import 'package:nomad/chapters/components/chapter_card.dart';
import 'package:nomad/data/models/unit.dart';
import 'package:nomad/units/views/units_view.dart';

class LessonsView extends StatefulWidget {
  const LessonsView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<LessonsView> {
  @override
  Widget build(BuildContext context) {
    List<Chapter> chapters = MockChapters.findAll();

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        padding:
            const EdgeInsets.only(top: 60, bottom: 80, left: 20, right: 20),
        children: [
          const Text(
            "Разделы",
            style: TextStyle(
                color: AppColors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          ..._buildChapters(chapters)
        ],
      ),
    );
  }

  List<Widget> _buildChapters(List<Chapter> chapters) {
    return chapters
        .map((Chapter chapter) => Container(
            height: 170,
            padding: const EdgeInsets.only(bottom: 16),
            child: ChapterCard(
              title: chapter.title,
              description: chapter.description,
              onTap: () {
                _navigateToUnitsView(context, chapter.units);
              },
            )))
        .toList();
  }

  _navigateToUnitsView(BuildContext context, List<Unit> units) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => UnitsView(
                  units: units,
                )));
  }
}
