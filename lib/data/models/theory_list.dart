import 'package:nomad/data/models/content.dart';
import 'package:nomad/data/models/theory_list_item.dart';

class TheoryList extends Content {
  final List<TheoryListItem> items;
  final String? title;
  final bool numeric;

  const TheoryList({required this.items, this.title, this.numeric = false});
}
