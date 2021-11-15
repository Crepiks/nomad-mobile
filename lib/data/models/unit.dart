import 'package:nomad/data/models/practice.dart';
import 'package:nomad/data/models/theory.dart';

class Unit {
  final int id;
  final Theory theory;
  final List<Practice> practices;

  const Unit({required this.id, required this.theory, required this.practices});
}
