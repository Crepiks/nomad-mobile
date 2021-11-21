import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';

class PracticeTask extends StatelessWidget {
  final int index;
  final String title;
  final String description;

  const PracticeTask(
      {Key? key,
      required this.index,
      required this.title,
      this.description = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(index, title),
        description != "" ? _buildDescription(description) : Container()
      ],
    );
  }

  Widget _buildTitle(int index, String title) {
    return Text(
      "$index. $title",
      style: const TextStyle(
          color: AppColors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.2),
    );
  }

  Widget _buildDescription(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Text(text,
          style: const TextStyle(
              color: AppColors.black, fontSize: 16, height: 1.2)),
    );
  }
}
