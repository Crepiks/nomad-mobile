import 'package:nomad/data/models/theory_item.dart';
import 'package:nomad/data/models/theory_table_row.dart';

class TheoryTable extends TheoryItem {
  final List<TheoryTableRow> rows;
  final String? title;
  final bool hasBorder;

  const TheoryTable({
    required this.rows,
    this.title,
    this.hasBorder = true,
  });
}
