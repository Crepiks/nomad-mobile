import 'package:flutter/material.dart';
import 'package:nomad/common/constants/app_colors.dart';

typedef TextChangeAction = Function(String text);

class AnswerInput extends StatefulWidget {
  final TextChangeAction? onTextChange;
  final String value;

  const AnswerInput({Key? key, this.onTextChange, required this.value})
      : super(key: key);

  @override
  State<AnswerInput> createState() => _AnswerInputState();
}

class _AnswerInputState extends State<AnswerInput> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: (String text) {
        if (widget.onTextChange != null) {
          widget.onTextChange!(text);
        }
      },
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
