import 'package:dotted_border/dotted_border.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/data/models/unit/unit_theory.dart';
import 'package:nomad/unit/views/components/theory_title.dart';

class UnitTheory extends StatefulWidget {
  const UnitTheory(
      {Key? key,
      required this.theory,
      required this.onClickToPractice,
      required this.index})
      : super(key: key);

  final UnitTheoryModel theory;
  final int index;
  final Function onClickToPractice;

  @override
  _UnitTheoryState createState() => _UnitTheoryState();
}

class _UnitTheoryState extends State<UnitTheory> {
  ScrollController _controller = ScrollController();
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
              controller: _controller,
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 60),
                ...widget.theory.items
                    .map((item) => TheoryItemParser(item: item))
                    .toList(),
                SizedBox(height: 30),
                ActionButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TheoryItemParser extends StatelessWidget {
  const TheoryItemParser({Key? key, required this.item}) : super(key: key);

  final TheoryItem item;

  @override
  Widget build(BuildContext context) {
    return item is TheoryText
        ? TheoryTextView(item: item as TheoryText)
        : item is TheoryImage
            ? TheoryImageView(item: item as TheoryImage)
            : item is TheoryTable
                ? TheoryTableView(item: item as TheoryTable)
                : item is TheoryList
                    ? TheoryListView(item: item as TheoryList)
                    : item is TheoryBorderBox
                        ? TheoryBorderBoxView(item: item as TheoryBorderBox)
                        : item is TheorySpace
                            ? TheorySpaceView()
                            : Container();
  }
}

class TableItemParser extends StatelessWidget {
  const TableItemParser({Key? key, required this.item}) : super(key: key);

  final TheoryItem item;

  @override
  Widget build(BuildContext context) {
    return item is TheoryText
        ? TheoryTextView(item: item as TheoryText)
        : item is TheoryImage
            ? TheoryImageView(item: item as TheoryImage)
            : item is TheoryTable
                ? TheoryTableView(item: item as TheoryTable)
                : item is TheoryList
                    ? TheoryListView(item: item as TheoryList)
                    : item is TheoryBorderBox
                        ? TheoryBorderBoxView(item: item as TheoryBorderBox)
                        : item is TheorySpace
                            ? TheorySpaceView()
                            : Container();
  }
}

class TheoryTextView extends StatelessWidget {
  const TheoryTextView({Key? key, required this.item}) : super(key: key);

  final TheoryText item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        item.text,
        style:
            TextStyle(color: AppColors.blackColor, fontSize: 20, height: 1.4),
      ),
    );
  }
}

class TheoryImageView extends StatelessWidget {
  const TheoryImageView({Key? key, required this.item}) : super(key: key);

  final TheoryImage item;

  @override
  Widget build(BuildContext context) {
    print(item.imagePath);
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(item.imagePath), fit: BoxFit.contain)),
    );
  }
}

class TheoryTableView extends StatelessWidget {
  const TheoryTableView({Key? key, required this.item}) : super(key: key);

  final TheoryTable item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(width: 1, color: AppColors.blackColor60),
          borderRadius: BorderRadius.circular(12)),
      child: Table(
          border: TableBorder.symmetric(
              inside: BorderSide(width: 1, color: AppColors.blackColor60)),
          children: item.rows
              .map((row) => TableRow(
                  children: row.cells
                      .map((cell) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            child: TheoryItemParser(item: cell.item),
                          ))
                      .toList()))
              .toList()),
    );
  }
}

class TheoryListView extends StatelessWidget {
  const TheoryListView({Key? key, required this.item}) : super(key: key);

  final TheoryList item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        item.title != null
            ? Text(
                item.title ?? "",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            : Container(),
        item.title != null ? SizedBox(height: 16) : Container(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: item.items
              .map((listItem) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "·",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            listItem.text,
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 18,
                                height: 1.3),
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}

class TheoryBorderBoxView extends StatelessWidget {
  const TheoryBorderBoxView({Key? key, required this.item}) : super(key: key);

  final TheoryBorderBox item;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: AppColors.primaryColor,
      dashPattern: [14, 6],
      strokeWidth: 3,
      radius: Radius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children:
              item.items.map((item) => TheoryItemParser(item: item)).toList(),
        ),
      ),
    );
  }
}

class TheorySpaceView extends StatelessWidget {
  const TheorySpaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50);
  }
}
