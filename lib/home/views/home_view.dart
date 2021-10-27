import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/home/views/components/chapters/chapter_card.dart';
import 'package:nomad/home/views/components/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ChapterCard(),
                    ChapterCard(),
                    ChapterCard(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
