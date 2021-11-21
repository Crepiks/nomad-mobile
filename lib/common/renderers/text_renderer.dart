import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/theory_text.dart';

class TextRenderer extends StatelessWidget {
  final TheoryText text;

  const TextRenderer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text.text,
        textAlign: text.alignment == "left"
            ? TextAlign.left
            : text.alignment == "right"
                ? TextAlign.right
                : text.alignment == "center"
                    ? TextAlign.center
                    : TextAlign.center,
        style: const TextStyle(color: AppColors.black, fontSize: 18, height: 1),
      ),
    );
  }
}
