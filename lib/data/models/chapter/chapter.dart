import 'package:nomad/data/models/unit/unit.dart';

class Chapter {
  final int id;
  final String title;
  final String description;
  final List<Unit> units;

  Chapter(
      {required this.id,
      required this.title,
      required this.description,
      required this.units});
}
