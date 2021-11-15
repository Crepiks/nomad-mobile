import 'package:nomad/data/models/question.dart';
import 'package:nomad/data/models/theory_item.dart';

class Practice {
  final int id;
  final String title;
  final String? description;
  final TheoryItem? extraItem;
  final List<Question> questions;

  const Practice(
      {required this.id,
      required this.title,
      this.description,
      this.extraItem,
      required this.questions});
}
