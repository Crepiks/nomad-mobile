import "package:flutter/material.dart";
import 'package:nomad/data/models/theory_border_box.dart';
import 'package:nomad/data/models/theory_image.dart';
import 'package:nomad/data/models/content.dart';
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
  final Content content;

  const TheoryItemRenderer({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return content is TheoryText
        ? TextRenderer(text: content as TheoryText)
        : content is TheoryImage
            ? ImageRenderer(image: content as TheoryImage)
            : content is TheoryTable
                ? TableRenderer(table: content as TheoryTable)
                : content is TheoryList
                    ? ListRenderer(list: content as TheoryList)
                    : content is TheoryBorderBox
                        ? ContentBoxRenderer(
                            content: content as TheoryBorderBox)
                        : content is TheorySpace
                            ? const TheorySpaceRenderer()
                            : Container();
  }
}
