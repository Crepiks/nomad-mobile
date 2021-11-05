class UnitTheoryModel {
  final String title;
  final List<TheoryItem> items;

  UnitTheoryModel({required this.title, required this.items});
}

class TheoryItem {}

class TheoryText extends TheoryItem {
  final String text;
  final String alignment;

  TheoryText({required this.text, this.alignment = "left"});
}

class TheoryImage extends TheoryItem {
  final String imagePath;

  TheoryImage({required this.imagePath});
}

class TheoryTable extends TheoryItem {
  final String? title;
  final bool hasBorder;
  final List<TheoryTableRow> rows;

  TheoryTable({this.title, this.hasBorder = true, required this.rows});
}

class TheoryTableRow {
  final List<TheoryTableCell> cells;

  TheoryTableRow({required this.cells});
}

class TheoryTableCell {
  final TheoryItem item;

  TheoryTableCell({required this.item});
}

class TheoryList extends TheoryItem {
  final String? title;
  final List<TheoryListItem> items;
  final bool numeric;

  TheoryList({this.title, required this.items, this.numeric = false});
}

class TheoryListItem {
  final String text;

  TheoryListItem({required this.text});
}

class TheoryBorderBox extends TheoryItem {
  final String? title;
  final List<TheoryItem> items;

  TheoryBorderBox({this.title, required this.items});
}

class TheorySpace extends TheoryItem {}
