import 'package:nomad/data/models/unit.dart';

class Chapter {
  final int id;
  final String title;
  final String description;
  final List<Unit> units;

  const Chapter(
      {required this.id,
      required this.title,
      required this.description,
      required this.units});
}
