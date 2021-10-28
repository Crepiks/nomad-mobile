import 'package:nomad/data/models/questions/input_question.model.dart';
import 'package:nomad/data/models/unit.dart';

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

  static List<Chapter> findAll() {
    List<Unit> units = [
      Unit(
          id: 0,
          theory: Theory(title: "-МЫН/-МІН/-СЫҢ/-СІҢ/-СЫЗ/-СІЗ", items: [
            TheoryItem(
                imagePath:
                    "filesystem:https://docs.google.com/persistent/docs/documents/1NgoMGPGj5DitpdqVfrv9M71BlYR_n99B/image/16D9CYkSDWPLrr2Lv6FvE6w-YsH7lkjAbsTYWrc2twXogpLTC?cacheKey=i.0_16D9CYkSDWPLrr2Lv6FvE6w-YsH7lkjAbsTYWrc2twXogpLTC"),
            TheoryItem(space: true),
            TheoryItem(text: TheoryText(text: "Менің атым – Әсел")),
            TheoryItem(text: TheoryText(text: "Мен – студентпін")),
            TheoryItem(text: TheoryText(text: "Мен –  жиырма екідемін")),
            TheoryItem(text: TheoryText(text: "Менің сүйікті түсім  – көк")),
            TheoryItem(text: TheoryText(text: "Мен – Қазақстандықпын")),
            TheoryItem(text: TheoryText(text: "Мен Алматыданмын")),
            TheoryItem(
                text: TheoryText(
                    text: "Менің сүйікті спортым – футбол мен  жүзу")),
            TheoryItem(
                text: TheoryText(
                    text: "Менің әкем – дәрігер,  анам – журналист")),
            TheoryItem(text: TheoryText(text: "Мен өнерге қызығамын")),
          ]),
          practice: [
            Practice(
              id: 0,
              title:
                  "Бір жолға жуан, бір жолға жіңішке жалғауды жалғап бөліп жазыңыз.",
              description:
                  "жуан: мен бала+мын, сен аға+сың,.......... жіңішке:сіз әке+сіз, сен жігітсің,............",
              questions: [
                InputQuestion("Мен мұғалім", ""),
                InputQuestion("Сен оқушы", ""),
                InputQuestion("Сіз ана", ""),
                InputQuestion("Сен спортшы", ""),
                InputQuestion("Сіз әнші", ""),
                InputQuestion("Мен қыз", ""),
              ],
            )
          ])
    ];

    List<Chapter> chapters = [
      Chapter(
          id: 0,
          title: "Местоимения",
          description:
              "Самостоятельная часть речи, которая указывает на предметы, признаки и т.д.",
          units: units),
      Chapter(
          id: 0,
          title: "Существительные",
          description: "Это тоже очень важная тема в казахском языке",
          units: units),
      Chapter(
          id: 0,
          title: "Прилагательные",
          description:
              "Даже возможно важнее, чем существительные, поэтому пройдите урок",
          units: units)
    ];

    return chapters;
  }
}
