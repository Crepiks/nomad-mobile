import "package:flutter/material.dart";
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:nomad/common/colors.dart';

class Input extends StatefulWidget {
  Input(
      {Key? key,
      this.title = "",
      required this.updateValue,
      this.startFieldValue = "",
      this.phoneInput = false,
      this.hintText = "",
      this.passwordInput = false,
      this.numberKeyboard = false,
      this.hasTitle = false})
      : super(key: key);

  final String title;
  final Function updateValue;
  final String hintText;
  final String startFieldValue;
  final bool phoneInput;
  final bool passwordInput;
  final bool numberKeyboard;
  final bool hasTitle;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  final maskFormatter = new MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
  );

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    this._controller.text = widget.startFieldValue;
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
                padding: EdgeInsets.only(left: 5),
                child: Text(widget.title,
                    style:
                        TextStyle(color: AppColors.blackColor80, fontSize: 16)),
              )
            : Container(),
        widget.hasTitle
            ? SizedBox(
                height: 8,
              )
            : Container(),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: TextField(
            onChanged: (text) => widget.updateValue(text),
            controller: _controller,
            keyboardType: widget.numberKeyboard || widget.phoneInput
                ? TextInputType.number
                : TextInputType.text,
            obscureText: widget.passwordInput,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.backgroundColor,
                hintText: widget.hintText,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.blackColor60),
                    borderRadius: BorderRadius.circular(20))),
            inputFormatters: widget.phoneInput ? [maskFormatter] : [],
          ),
        ),
      ],
    );
  }
}
