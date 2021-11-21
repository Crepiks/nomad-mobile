import "package:flutter/cupertino.dart";
import 'package:nomad/common/constants/app_colors.dart';

typedef TapAction = Function();

class TrueFalseButton extends StatelessWidget {
  final String text;
  final bool active;
  final TapAction? onTap;

  const TrueFalseButton(
      {Key? key, required this.text, this.active = false, this.onTap})
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
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
            color: active ? AppColors.primary : null,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.4, color: AppColors.primary)),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: active ? AppColors.white : AppColors.primary,
                  fontSize: 16)),
        ),
      ),
    );
  }
}
