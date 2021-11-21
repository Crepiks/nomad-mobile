import "package:flutter/material.dart";
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:nomad/common/constants/app_colors.dart';

class CommonInput extends StatefulWidget {
  const CommonInput(
      {Key? key,
      this.title = "",
      required this.updateValue,
      this.startFieldValue = "",
      this.phoneInput = false,
      this.hintText = "",
      this.passwordInput = false,
      this.numberKeyboard = false,
      this.hasTitle = false,
      this.practiceInput = false})
      : super(key: key);

  final String title;
  final Function updateValue;
  final String hintText;
  final String startFieldValue;
  final bool phoneInput;
  final bool passwordInput;
  final bool numberKeyboard;
  final bool hasTitle;
  final bool practiceInput;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<CommonInput> {
  final maskFormatter = MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
  );

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller.text = widget.startFieldValue;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.hasTitle
            ? Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(widget.title,
                    style:
                        const TextStyle(color: AppColors.black, fontSize: 16)),
              )
            : Container(),
        widget.hasTitle
            ? const SizedBox(
                height: 8,
              )
            : Container(),
        SizedBox(
          width: double.infinity,
          height: !widget.practiceInput ? 60 : 40,
          child: TextField(
            onChanged: (text) => widget.updateValue(text),
            controller: _controller,
            keyboardType: widget.numberKeyboard || widget.phoneInput
                ? TextInputType.number
                : TextInputType.text,
            obscureText: widget.passwordInput,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.background,
                hintText: widget.hintText,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: AppColors.black.withOpacity(0.2)),
                    borderRadius:
                        BorderRadius.circular(!widget.practiceInput ? 20 : 14)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.grey),
                    borderRadius: BorderRadius.circular(20))),
            inputFormatters: widget.phoneInput ? [maskFormatter] : [],
          ),
        ),
      ],
    );
  }
}
