import 'package:nomad/data/models/chapter/chapter.dart';
import 'package:nomad/data/models/unit/unit.dart';
import 'package:nomad/data/models/unit/unit_practice.dart';
import 'package:nomad/data/models/unit/unit_practice_question.dart';
import 'package:nomad/data/models/unit/unit_theory.dart';

class MockChapters {
  static List<Chapter> findAll() {
    final List<Unit> units = [
      Unit(
          id: 0,
          theory:
              UnitTheoryModel(title: "-МЫН/МІН/-СЫҢ/-СІҢ/-СЫЗ/-СІЗ", items: [
            TheoryImage(imagePath: "assets/practice-images/1.png"),
            TheorySpace(),
            TheoryText(text: "Менің атым – Әсел"),
            TheoryText(text: "Мен – студентпін"),
            TheoryText(text: "Мен – жиырма екідемін"),
            TheoryText(text: "Менің сүйікті түсім  – көк"),
            TheoryText(text: "Мен – Қазақстандықпын"),
            TheoryText(text: "Мен Алматыданмын"),
            TheoryText(text: "Менің сүйікті спортым – футбол мен жүзу"),
            TheoryText(text: "Менің әкем – дәрігер, анам – журналист"),
            TheoryText(text: "Мен өнерге қызығамын"),
            TheorySpace(),
            TheoryTable(title: "Болымды", rows: [
              TheoryTableRow(cells: [
                TheoryTableCell(item: TheoryText(text: "Мен")),
                TheoryTableCell(
                    item: TheoryList(items: [
                  TheoryListItem(
                      text: "-мын/-мін (дауыстылар, үнділерден кейін)"),
                  TheoryListItem(text: "-бын/-бін (ұяңдардан кейін)"),
                  TheoryListItem(text: "-пын/-пін (қатаңдардан кейін)")
                ])),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(
                  item: TheoryText(text: "Сен"),
                ),
                TheoryTableCell(
                  item: TheoryText(text: "-сың/-сің"),
                ),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(
                  item: TheoryText(text: "Сіз"),
                ),
                TheoryTableCell(
                  item: TheoryText(text: "-сыз/-сіз"),
                ),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(
                  item: TheoryText(text: "Ол"),
                ),
                TheoryTableCell(
                  item: TheoryText(text: "-/-"),
                ),
              ])
            ]),
            TheorySpace(),
            TheoryList(title: "Мысалдар:", items: [
              TheoryListItem(text: "Мен дәрігермін. Мен адамдарды емдеймін."),
              TheoryListItem(text: "Мен қызбын. Сен жігітсің"),
              TheoryListItem(text: "Мен Салнататпын. Сіз Айдарсыз."),
              TheoryListItem(text: "Мен он бестемін. Сен жиырма тоғыздасың."),
              TheoryListItem(text: "Сен үлкенсің. Ол кішкентай."),
              TheoryListItem(text: "Сіз мұғалімсіз. Ол оқушы."),
              TheoryListItem(text: "Мен Қанат емеспін. Мен Дидармын."),
              TheoryListItem(text: "Сен студент емессің. Сен оқушысың."),
              TheoryListItem(text: "Мен алтыда емеспін. Мен жетідемін."),
              TheoryListItem(text: "Сіз мұғалім емессіз. Сіз директорсыз."),
              TheoryListItem(text: "Ол Астанада емес. Ол Алматыда."),
              TheoryListItem(text: "Сен үлкен емессің. Сен кішкентайсың."),
            ]),
            TheorySpace(),
            TheoryBorderBox(items: [
              TheoryText(
                  text:
                      "-мын/мін/-сың/-сің/-сыз/-сіз – зат есім (оқушы), сын есім (үлкен), сан есім(алты), етістікке (тұрамын) жалғанады."),
              TheoryText(
                  text:
                      "емес – тек есім сөздерге жалғанады. Етістікке жалғанбайды."),
              TheorySpace(),
              TheoryText(text: "Мен ойнайды емес – дұрыс емес"),
              TheoryText(text: "Мен ойнамаймын – дұрыс")
            ])
          ]),
          practices: [
            UnitPracticeModel(
                id: 0,
                title:
                    "Бір жолға жуан, бір жолға жіңішке жалғауды жалғап бөліп жазыңыз.",
                description:
                    "жуан: мен бала+мын, сен аға+сың,.......... жіңішке:сіз әке+сіз, сен жігітсің,............",
                questions: [
                  InputQuestion(text: "Мен мұғалім", answer: "мін"),
                  InputQuestion(text: "Сен оқушы", answer: "сың"),
                  InputQuestion(text: "Сіз ана", answer: "сыз"),
                  InputQuestion(text: "Сен спортшы", answer: "сың"),
                  InputQuestion(text: "Сіз әнші", answer: "сіз"),
                  InputQuestion(text: "Мен қыз", answer: "мын"),
                  InputQuestion(text: "Сен аружан", answer: "сың"),
                  InputQuestion(text: "Сіз дәрігер", answer: "сіз"),
                ]),
            UnitPracticeModel(
                id: 1,
                title:
                    "Сөздерге –мын/-мін/-бын/-бін/-пын/-пін/-сың/-сің/-сыз/-сіз жалғауларын дұрыс жалғаңыз.",
                questions: [
                  InputQuestion(text: "Мен бала", answer: ""),
                  InputQuestion(text: "Сен әке", answer: ""),
                  InputQuestion(text: "Ол ұл", answer: ""),
                  InputQuestion(text: "Сіз дәрігер", answer: ""),
                  InputQuestion(text: "Сен спортшы", answer: ""),
                  InputQuestion(text: "Ол әнші", answer: ""),
                  InputQuestion(text: "Сіз ата", answer: ""),
                  InputQuestion(text: "Мен қыз", answer: ""),
                  InputQuestion(text: "Мен жігіт", answer: ""),
                  InputQuestion(text: "Мен ана", answer: ""),
                  InputQuestion(text: "Мен әже", answer: ""),
                  InputQuestion(text: "Мен Айдос", answer: ""),
                  InputQuestion(text: "Мен Ғазиз", answer: ""),
                  InputQuestion(text: "Мен мұғалім", answer: ""),
                  InputQuestion(text: "Сен аға", answer: ""),
                ]),
            UnitPracticeModel(
                id: 2,
                title: "Болымсыз форманы дұрыс жасаңыз.",
                description: "Мен ақылдымын емеспін – Х Мен ақылды емеспін – V",
                questions: [
                  InputQuestion(text: "Сен оқушы", answer: ""),
                  InputQuestion(text: "Сіз дәрігер", answer: ""),
                  InputQuestion(text: "Мен студент", answer: ""),
                  InputQuestion(text: "Ол бесте", answer: ""),
                  InputQuestion(text: "Сен қалада", answer: ""),
                  InputQuestion(text: "Сіз Алматыда", answer: ""),
                ]),
            UnitPracticeModel(
                id: 3,
                title:
                    "Әсел туралы жазылған суретке қарап (А)  өзіңіз туралы  дәл солай жазыңыз.",
                questions: [
                  InputQuestion(text: "(аты)", answer: "", wide: true),
                  InputQuestion(text: "(жасы)", answer: "", wide: true),
                  InputQuestion(text: "(қаласы)", answer: "", wide: true),
                  InputQuestion(text: "(мемлекеті)", answer: "", wide: true),
                  InputQuestion(text: "(ата-анасы)", answer: "", wide: true),
                  InputQuestion(
                      text: "(неге қызығады?)", answer: "", wide: true),
                ]),
            UnitPracticeModel(
                id: 4,
                title: "Дұрыс/Дұрыс емес деп жазыңыз.",
                questions: [
                  TrueFalseQuestion(text: "Мен Айдарбын", correct: false),
                  TrueFalseQuestion(text: "Сен Астанадасың", correct: true),
                  TrueFalseQuestion(text: "Ол Даниярмын", correct: false),
                  TrueFalseQuestion(text: "Сіз Алматыдасың", correct: true),
                  TrueFalseQuestion(
                      text: "Мен оқушымын емеспін", correct: false),
                  TrueFalseQuestion(text: "Сен дәрігер емессің", correct: true),
                  TrueFalseQuestion(
                      text: "Сіз мұғалімсіз емес", correct: false),
                  TrueFalseQuestion(text: "Ол спортшы емес", correct: true),
                  TrueFalseQuestion(text: "Сен үйдесің", correct: true),
                  TrueFalseQuestion(text: "Мен даладамын", correct: true),
                ])
          ]),
      Unit(
          id: 1,
          theory: UnitTheoryModel(
              title: "-МЫН/МІН/-СЫҢ/-СІҢ/-СЫЗ/-СІЗ (СҰРАҚ) ",
              items: [
                TheoryTable(title: "Болымды", rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Мен")),
                    TheoryTableCell(
                        item: TheoryList(items: [
                      TheoryListItem(text: "-мын/-мін"),
                      TheoryListItem(text: "-бын/-бін"),
                      TheoryListItem(text: "-пын/-пін"),
                    ]))
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Сен")),
                    TheoryTableCell(item: TheoryText(text: "-сың/-сің"))
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Сіз")),
                    TheoryTableCell(item: TheoryText(text: "-сыз/-сіз"))
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Ол")),
                    TheoryTableCell(item: TheoryText(text: "-/-"))
                  ]),
                ]),
                TheorySpace(),
                TheoryTable(title: "Cұраулы", rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Мен")),
                    TheoryTableCell(
                        item: TheoryList(items: [
                      TheoryListItem(text: "-мын/-мін"),
                      TheoryListItem(text: "-бын/-бін"),
                      TheoryListItem(text: "-пын/-пін"),
                    ])),
                    TheoryTableCell(item: TheoryText(text: "ба/бе?")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Сен")),
                    TheoryTableCell(item: TheoryText(text: "-сың/-сің")),
                    TheoryTableCell(item: TheoryText(text: "ба/бе?")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Сіз")),
                    TheoryTableCell(item: TheoryText(text: "-сыз/-сіз")),
                    TheoryTableCell(item: TheoryText(text: "ба/бе?")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(item: TheoryText(text: "Ол")),
                    TheoryTableCell(item: TheoryText(text: "-/-")),
                    TheoryTableCell(
                        item: TheoryList(items: [
                      TheoryListItem(text: "ма/ме?"),
                      TheoryListItem(text: "ба/бе?"),
                      TheoryListItem(text: "па/пе?"),
                    ])),
                  ]),
                ]),
                TheorySpace(),
                TheoryImage(imagePath: "assets/practice-images/2.png"),
                TheoryText(text: "Атың кім?"),
                TheoryText(text: "Айбек", leftAlignment: false),
                TheoryText(text: "Үйленгенсің бе?"),
                TheoryText(text: "Жоқ, мен бойдақпын", leftAlignment: false),
                TheoryText(text: "Жасың қаншада?"),
                TheoryText(text: "25", leftAlignment: false),
                TheoryText(text: "Сен студентсің бе?"),
                TheoryText(text: "Иә, студентпін", leftAlignment: false),
                TheorySpace(),
                TheoryList(items: [
                  TheoryListItem(
                      text:
                          "Мен осы жерге отырамын ба? Иә, сен осы жерге отырасың."),
                  TheoryListItem(
                      text:
                          "Сен мектепте мұғалімсің бе? Жоқ, мен мектепте тәрбиешімін."),
                  TheoryListItem(
                      text:
                          "Сіз жиырма бестесіз бе? Жоқ, мен жиырма алтыдамын."),
                  TheoryListItem(
                      text: "Ол қазір үйде ме? Жоқ, ол қазір үйде емес."),
                ]),
                TheorySpace(),
                TheoryText(
                    text:
                        "......қайда? / .....не? / ......кім? / .....қанша....? / ....қалай? / Неге....?"),
                TheoryList(items: [
                  TheoryListItem(text: "Сенің анаң қайда? Ол үйде ме?"),
                  TheoryListItem(text: "Сен қайдасың? Мен жұмыстамын"),
                  TheoryListItem(text: "Бұл не? Бұл – жаңа телефон"),
                  TheoryListItem(text: "Сіздің атыңыз кім? Менің атым – Әлия"),
                  TheoryListItem(text: "Сен қанша жастасың? Мен 30 жастамын"),
                  TheoryListItem(text: "Мына көйлек әдемі екен. Қанша тұрады?"),
                  TheoryListItem(
                      text: "Сіздің ата-анаңыз қалай? Жағдайлары жақсы ма?"),
                  TheoryListItem(
                      text:
                          "Бұл қонақ үй ондай керемет емес. Неге сонша қымбат тұрады?"),
                ]),
                TheorySpace(),
                TheoryList(
                    title: "Қазақ тілінде сұраулы сөйлем екі жолмен жасалады:",
                    numeric: true,
                    items: [
                      TheoryListItem(
                          text: "ма/ме/ба/бе/па/пе дейтін шылаулары арқылы"),
                      TheoryListItem(
                          text:
                              "қайда? не? кім? қанша? қалай? неге? дейтін сұрау есімдіктері арқылы"),
                    ]),
                TheorySpace(),
                TheoryText(
                    text: "Бір сұраулы сөйлемде екі жағдай қатар келмейді."),
                TheoryText(text: "Сен қайдасың ба? – дұрыс емес "),
                TheoryText(text: "Сен үйдесің бе қайда? – дұрыс емес"),
                TheoryText(text: "Сен қайдасың? – дұрыс"),
                TheoryText(text: "Сен үйдесің бе? – дұрыс"),
              ]),
          practices: [
            UnitPracticeModel(
                id: 5,
                title: "Сұрақтың дұрыс жауабын табыңыз.",
                questions: [
                  MatchQuestion(question: "Камера қайда?", answer: ""),
                  MatchQuestion(
                      question: "Сенің көлігіңнің түсі көк пе?", answer: ""),
                  MatchQuestion(question: "Айдана Тараздан ба?", answer: ""),
                  MatchQuestion(
                      question: "Сіздің сөмкеңіздің түсі қандай?", answer: ""),
                  MatchQuestion(question: "Сенің қарның ашты ма?", answer: ""),
                  MatchQuestion(question: "Дананың қалы қалай?", answer: ""),
                  MatchQuestion(question: "Бұл әйел кім?", answer: ""),
                  MatchQuestion(question: "Анардың анасы қайда?", answer: ""),
                ]),
            UnitPracticeModel(
                id: 6,
                title: "Сөздерден сөйлем құраңыз.",
                questions: [
                  InputQuestion(
                      text: "(ме / сенің анаң / үйде)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(жақсы / ата-анаң / сенің / ма?)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(жұмысыңыз / қызықты / ма / сіздің)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(па / ашық / бүгін / дүкен)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(тұрасың / қайда / сен)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(спортқа / сіз / қызығасыз / ба)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(жақын / мектеп / ба / бұл жерге)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(мектепте / оқушылар / ме)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                  InputQuestion(
                      text: "(кешіктің / сен / неге)",
                      answer: "",
                      wide: true,
                      postfix: "?"),
                ])
          ])
    ];

    final List<Chapter> chapters = [
      Chapter(
          id: 0,
          title: "Окончания",
          description:
              "Окончания — это словоизменительные морфемы, находящиеся после корня или суффикса, выражающие различные грамматические значения и служащие для связи слов в словосочетании и предложении.",
          units: units),
      Chapter(
          id: 1,
          title: "Суфиксы",
          description:
              "словообразовательный элемент, часть слова между корнем и окончанием.",
          units: units)
    ];

    return chapters;
  }
}
