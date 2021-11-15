import 'package:nomad/data/models/theory_item.dart';

class Theory {
  final String title;
  final List<TheoryItem> items;

  const Theory({required this.title, required this.items});
}
