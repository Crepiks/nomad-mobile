import 'package:nomad/data/models/unit/unit_practice_question.dart';
import 'package:nomad/data/models/unit/unit_theory.dart';

class UnitPracticeModel {
  final int id;
  final String title;
  final String? description;
  final TheoryItem? extraItem;
  final List<PracticeQuestion> questions;

  UnitPracticeModel(
      {required this.id,
      required this.title,
      this.description,
      this.extraItem,
      required this.questions});
}
