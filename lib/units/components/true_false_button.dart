import "package:flutter/cupertino.dart";
import 'package:nomad/common/constants/app_colors.dart';

typedef TapAction = Function();

class TrueFalseButton extends StatelessWidget {
  final String text;
  final bool active;
  final bool? success;
  final TapAction? onTap;

  const TrueFalseButton(
      {Key? key,
      required this.text,
      this.active = false,
      this.success,
      this.onTap})
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
            color: success == null
                ? active
                    ? AppColors.primary
                    : null
                : success == true
                    ? AppColors.success
                    : AppColors.error,
            borderRadius: BorderRadius.circular(10),
            border: success == null
                ? Border.all(width: 1.4, color: AppColors.primary)
                : null),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: active || success != null
                      ? AppColors.white
                      : AppColors.primary,
                  fontSize: 16)),
        ),
      ),
    );
  }
}
