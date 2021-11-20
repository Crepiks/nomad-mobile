import 'package:nomad/data/models/content.dart';

class TheoryText extends Content {
  final String text;
  final String alignment;

  const TheoryText({required this.text, this.alignment = "left"});
}
