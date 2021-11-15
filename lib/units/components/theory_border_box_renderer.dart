import "package:flutter/material.dart";
import 'package:dotted_border/dotted_border.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/theory_border_box.dart';
import 'package:nomad/units/components/theory_item_renderer.dart';

class TheoryBorderBoxRenderer extends StatelessWidget {
  final TheoryBorderBox item;

  const TheoryBorderBoxRenderer({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: AppColors.primaryColor,
      dashPattern: const [14, 6],
      strokeWidth: 3,
      radius: const Radius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children:
              item.items.map((item) => TheoryItemRenderer(item: item)).toList(),
        ),
      ),
    );
  }
}
