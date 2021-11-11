import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/chapter/chapter.dart';
import 'chapter_card.dart';

class ChaptersList extends StatelessWidget {
  const ChaptersList(
      {Key? key, required this.chapters, required this.onChangeChapter})
      : super(key: key);

  final List<Chapter> chapters;
  final Function onChangeChapter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Разделы учебника",
            style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
            height: 200,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: chapters.length,
                onPageChanged: (index) {
                  onChangeChapter(index);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ChapterCard(
                    title: chapters[index].title,
                    description: chapters[index].description,
                  );
                }))
      ],
    );
  }
}
