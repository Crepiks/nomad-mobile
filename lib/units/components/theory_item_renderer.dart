import "package:flutter/material.dart";
import 'package:nomad/data/models/theory_border_box.dart';
import 'package:nomad/data/models/theory_image.dart';
import 'package:nomad/data/models/theory_item.dart';
import 'package:nomad/data/models/theory_list.dart';
import 'package:nomad/data/models/theory_space.dart';
import 'package:nomad/data/models/theory_table.dart';
import 'package:nomad/data/models/theory_text.dart';
import 'package:nomad/common/renderers/content_box_renderer.dart';
import 'package:nomad/common/renderers/image_renderer.dart';
import 'package:nomad/common/renderers/list_renderer.dart';
import 'package:nomad/common/renderers/space_renderer.dart';
import 'package:nomad/common/renderers/table_renderer.dart';
import 'package:nomad/common/renderers/text_renderer.dart';

class TheoryItemRenderer extends StatelessWidget {
  final TheoryItem item;

  const TheoryItemRenderer({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return item is TheoryText
        ? TextRenderer(text: item as TheoryText)
        : item is TheoryImage
            ? ImageRenderer(image: item as TheoryImage)
            : item is TheoryTable
                ? TableRenderer(table: item as TheoryTable)
                : item is TheoryList
                    ? ListRenderer(list: item as TheoryList)
                    : item is TheoryBorderBox
                        ? ContentBoxRenderer(content: item as TheoryBorderBox)
                        : item is TheorySpace
                            ? const TheorySpaceRenderer()
                            : Container();
  }
}
