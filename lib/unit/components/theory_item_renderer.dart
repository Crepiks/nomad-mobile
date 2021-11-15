import "package:flutter/material.dart";
import 'package:nomad/data/models/theory_border_box.dart';
import 'package:nomad/data/models/theory_image.dart';
import 'package:nomad/data/models/theory_item.dart';
import 'package:nomad/data/models/theory_list.dart';
import 'package:nomad/data/models/theory_space.dart';
import 'package:nomad/data/models/theory_table.dart';
import 'package:nomad/data/models/theory_text.dart';
import 'package:nomad/unit/components/theory_border_box_renderer.dart';
import 'package:nomad/unit/components/theory_image_renderer.dart';
import 'package:nomad/unit/components/theory_list_renderer.dart';
import 'package:nomad/unit/components/theory_space_renderer.dart';
import 'package:nomad/unit/components/theory_table_renderer.dart';
import 'package:nomad/unit/components/theory_text_renderer.dart';

class TheoryItemRenderer extends StatelessWidget {
  final TheoryItem item;

  const TheoryItemRenderer({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return item is TheoryText
        ? TheoryTextRenderer(item: item as TheoryText)
        : item is TheoryImage
            ? TheoryImageRenderer(item: item as TheoryImage)
            : item is TheoryTable
                ? TheoryTableRenderer(item: item as TheoryTable)
                : item is TheoryList
                    ? TheoryListRenderer(item: item as TheoryList)
                    : item is TheoryBorderBox
                        ? TheoryBorderBoxRenderer(item: item as TheoryBorderBox)
                        : item is TheorySpace
                            ? const TheorySpaceRenderer()
                            : Container();
  }
}
