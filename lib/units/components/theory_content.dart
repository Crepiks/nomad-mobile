import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/data/models/theory.dart';
import 'package:nomad/units/components/theory_item_renderer.dart';

class TheoryContent extends StatefulWidget {
  final Theory theory;
  final int index;
  final Function onClickToPractice;

  const TheoryContent({
    Key? key,
    required this.theory,
    required this.index,
    required this.onClickToPractice,
  }) : super(key: key);

  @override
  _UnitTheoryState createState() => _UnitTheoryState();
}

class _UnitTheoryState extends State<TheoryContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 90, bottom: 30),
              physics: const BouncingScrollPhysics(),
              children: [
                ..._buildTheoryContent(),
                const SizedBox(height: 30),
                _buildPracticeButton()
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTheoryContent() {
    return widget.theory.items
        .map((item) => TheoryItemRenderer(content: item))
        .toList();
  }

  ActionButton _buildPracticeButton() {
    return ActionButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "К практике",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.arrowRight,
              size: 16,
              color: AppColors.black,
            )
          ],
        ),
        onClick: () {
          widget.onClickToPractice();
        });
  }
}
