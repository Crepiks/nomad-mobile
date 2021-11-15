import 'package:nomad/data/models/theory_item.dart';

class TheoryBorderBox extends TheoryItem {
  final List<TheoryItem> items;
  final String? title;

  const TheoryBorderBox({
    required this.items,
    this.title,
  });
}
