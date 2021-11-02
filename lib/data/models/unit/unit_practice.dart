import 'package:nomad/data/models/unit/unit_practice_question.dart';

class UnitPracticeModal {
  final int id;
  final String title;
  final String? description;
  final List<PracticeQuestion> questions;

  UnitPracticeModal(
      {required this.id,
      required this.title,
      this.description,
      required this.questions});
}
