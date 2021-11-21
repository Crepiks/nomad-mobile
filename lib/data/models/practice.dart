import 'package:nomad/data/models/questions/question.dart';
import 'package:nomad/data/models/content.dart';

class Practice {
  final int id;
  final String title;
  final String? description;
  final Content? extraItem;
  final List<Question> questions;

  const Practice(
      {required this.id,
      required this.title,
      this.description,
      this.extraItem,
      required this.questions});
}
