import 'package:nomad/data/models/theory_item.dart';

class TheoryText extends TheoryItem {
  final String text;
  final String alignment;

  const TheoryText({required this.text, this.alignment = "left"});
}
