import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/theory_table.dart';
import 'package:nomad/units/components/theory_item_renderer.dart';

class TableRenderer extends StatelessWidget {
  final TheoryTable table;

  const TableRenderer({Key? key, required this.table}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(width: 1, color: AppColors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Table(
          border: TableBorder.symmetric(
              inside: const BorderSide(width: 1, color: AppColors.grey)),
          children: table.rows
              .map((row) => TableRow(
                  children: row.cells
                      .map((cell) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            child: TheoryItemRenderer(content: cell.content),
                          ))
                      .toList()))
              .toList()),
    );
  }
}
