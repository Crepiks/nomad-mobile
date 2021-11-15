import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/theory_text.dart';

class TheoryTextRenderer extends StatelessWidget {
  final TheoryText item;

  const TheoryTextRenderer({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        item.text,
        textAlign: item.alignment == "left"
            ? TextAlign.left
            : item.alignment == "right"
                ? TextAlign.right
                : item.alignment == "center"
                    ? TextAlign.center
                    : TextAlign.center,
        style: const TextStyle(
            color: AppColors.blackColor, fontSize: 20, height: 1.4),
      ),
    );
  }
}
