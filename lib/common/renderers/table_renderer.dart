import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/theory_table.dart';
import 'package:nomad/data/models/theory_table_cell.dart';
import 'package:nomad/data/models/theory_table_row.dart';
import 'package:nomad/units/components/theory_item_renderer.dart';

class TableRenderer extends StatelessWidget {
  final TheoryTable table;

  const TableRenderer({Key? key, required this.table}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.primary),
          borderRadius: BorderRadius.circular(10)),
      child: Table(
          border: TableBorder.symmetric(
              inside: const BorderSide(width: 2, color: AppColors.primary)),
          children: _buildRows(table.rows)),
    );
  }

  List<TableRow> _buildRows(List<TheoryTableRow> rows) {
    return rows
        .map((row) => TableRow(children: _buildCells(row.cells)))
        .toList();
  }

  List<Widget> _buildCells(List<TheoryTableCell> cells) {
    return cells
        .map((cell) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TheoryItemRenderer(content: cell.content),
            ))
        .toList();
  }
}
