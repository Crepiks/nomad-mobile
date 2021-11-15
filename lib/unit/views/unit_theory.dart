import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/data/models/theory.dart';
import 'package:nomad/unit/components/theory_item_renderer.dart';
import 'package:nomad/unit/components/theory_title.dart';

class UnitTheory extends StatefulWidget {
  final Theory theory;
  final int index;
  final Function onClickToPractice;

  const UnitTheory({
    Key? key,
    required this.theory,
    required this.index,
    required this.onClickToPractice,
  }) : super(key: key);

  @override
  _UnitTheoryState createState() => _UnitTheoryState();
}

class _UnitTheoryState extends State<UnitTheory> {
  final ScrollController _controller = ScrollController();
  bool closeTheoryTitle = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        closeTheoryTitle = _controller.offset > 30;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              alignment: Alignment.topCenter,
              height: closeTheoryTitle ? 0 : 100),
          AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.topCenter,
              child: TheoryTitle(
                  index: widget.index + 1, title: widget.theory.title),
              height: closeTheoryTitle ? 0 : 60),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 30),
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 60),
                ...widget.theory.items
                    .map((item) => TheoryItemRenderer(item: item))
                    .toList(),
                const SizedBox(height: 30),
                ActionButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "К практике",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FaIcon(
                          FontAwesomeIcons.arrowRight,
                          size: 16,
                          color: AppColors.blackColor,
                        )
                      ],
                    ),
                    onClick: () {
                      widget.onClickToPractice();
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
