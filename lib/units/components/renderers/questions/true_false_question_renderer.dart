import "package:flutter/cupertino.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/units/components/true_false_button.dart';

class TrueFalseQuestionRenderer extends StatefulWidget {
  final int id;
  final String text;

  const TrueFalseQuestionRenderer(
      {Key? key, required this.id, required this.text})
      : super(key: key);

  @override
  _TrueFalseQuestionRendererState createState() =>
      _TrueFalseQuestionRendererState();
}

class _TrueFalseQuestionRendererState extends State<TrueFalseQuestionRenderer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.text,
              style: const TextStyle(
                  color: AppColors.black, fontSize: 16, height: 1)),
          const SizedBox(height: 12),
          Row(
            children: const [
              Expanded(child: TrueFalseButton(text: "Дұрыс")),
              SizedBox(width: 10),
              Expanded(child: TrueFalseButton(text: "Бұрыс"))
            ],
          )
        ],
      ),
    );
  }
}
