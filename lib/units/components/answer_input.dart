import 'package:flutter/material.dart';
import 'package:nomad/common/constants/app_colors.dart';

typedef TextChangeAction = Function(String text);

class AnswerInput extends StatelessWidget {
  final TextChangeAction? onTextChange;
  final _controller = TextEditingController();

  AnswerInput({Key? key, this.onTextChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String text) {
        if (onTextChange != null) {
          onTextChange!(text);
        }
      },
      controller: _controller,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.background,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 2, color: AppColors.black.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: AppColors.primary),
              borderRadius: BorderRadius.circular(20))),
    );
  }
}
