import 'package:nomad/data/models/theory_item.dart';
import 'package:nomad/data/models/theory_list_item.dart';

class TheoryList extends TheoryItem {
  final List<TheoryListItem> items;
  final String? title;
  final bool numeric;

  const TheoryList({required this.items, this.title, this.numeric = false});
}
