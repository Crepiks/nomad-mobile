import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/chapter.dart';
import 'package:nomad/home/views/components/chapters/chapter_card.dart';
import 'package:nomad/home/views/components/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Chapter> chapters = Chapter.findAll();

    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Header(),
          ),
          SizedBox(height: 34),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Разделы учебника",
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                  height: 200,
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: chapters.length,
                      onPageChanged: (index) {},
                      itemBuilder: (BuildContext context, int index) {
                        return ChapterCard(
                          title: chapters[index].title,
                          description: chapters[index].description,
                        );
                      }))
            ],
          )
        ],
      ),
    );
  }
}
