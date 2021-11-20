import 'package:nomad/data/models/content.dart';

class TheoryBorderBox extends Content {
  final List<Content> items;
  final String? title;

  const TheoryBorderBox({
    required this.items,
    this.title,
  });
}
