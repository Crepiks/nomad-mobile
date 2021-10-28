// import 'package:dartz/dartz.dart';
// import 'package:nomad/data/models/questions/input_question.model.dart';
// import 'package:nomad/data/models/questions/match_question.model.dart';
// import 'package:nomad/data/models/questions/one_choice_question.model.dart';
// import 'package:nomad/data/models/questions/thue_false_question.model.dart';

class Unit {
  final int id;
  final Theory theory;
  final List<Practice> practice;

  Unit({required this.id, required this.theory, required this.practice});
}

class Theory {
  final String title;
  final List<TheoryItem> items;

  Theory({required this.title, required this.items});
}

class TheoryItem {
  final TheoryText? text;
  final String? imagePath;
  final Table? table;
  final TheoryList? list;
  final BorderText? borderText;
  final bool? space;

  TheoryItem(
      {this.text,
      this.imagePath,
      this.table,
      this.list,
      this.borderText,
      this.space});
}

class TheoryText {
  final String text;
  final bool leftAlignment;

  TheoryText({required this.text, this.leftAlignment = true});
}

class Table {
  final String? title;
  final List<TableRow> rows;

  Table({this.title, required this.rows});
}

class TableRow {
  final List<TableCell> cells;

  TableRow({required this.cells});
}

class TableCell {
  final String text;

  TableCell({required this.text});
}

class TheoryList {
  final String? title;
  final List<TheoryListItem> items;

  TheoryList({this.title, required this.items});
}

class TheoryListItem {
  final String text;

  TheoryListItem({required this.text});
}

class BorderText {
  final String? title;
  final List<String> items;

  BorderText({this.title, required this.items});
}

class Practice {
  final int id;
  final String title;
  final String? description;
  // final List<
  //     Either<
  //         InputQuestion,
  //         Either<OneChoiceQuestion,
  //             Either<TrueFalseQuestion, MatchQuestion>>>> questions;
  final List questions;

  Practice(
      {required this.id,
      required this.title,
      this.description,
      required this.questions});
}
