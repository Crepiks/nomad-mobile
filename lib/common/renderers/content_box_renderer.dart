import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/theory_border_box.dart';
import 'package:nomad/units/components/theory_item_renderer.dart';

class ContentBoxRenderer extends StatelessWidget {
  final TheoryBorderBox content;

  const ContentBoxRenderer({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.primary, width: 2)),
      child: Column(
        children: content.items
            .map((item) => TheoryItemRenderer(content: item))
            .toList(),
      ),
    );
  }
}
