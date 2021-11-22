import "package:flutter/cupertino.dart";
import 'package:nomad/common/constants/app_colors.dart';

typedef TapAction = Function();

class MatchQuestionOption extends StatelessWidget {
  final String text;
  final bool selected;
  final TapAction? onTap;

  const MatchQuestionOption(
      {Key? key, required this.text, this.selected = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        decoration: const BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            selected ? _buildSelectedBullet() : Container()
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedBullet() {
    return Container(
      height: 10,
      width: 10,
      decoration:
          const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
    );
  }
}
