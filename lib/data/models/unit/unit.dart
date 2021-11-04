import 'package:nomad/data/models/unit/unit_practice.dart';
import 'package:nomad/data/models/unit/unit_theory.dart';

class Unit {
  final int id;
  final UnitTheoryModel theory;
  final List<UnitPracticeModel> practices;

  Unit({required this.id, required this.theory, required this.practices});
}
