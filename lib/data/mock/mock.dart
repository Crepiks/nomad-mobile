import 'package:nomad/data/models/chapter.dart';
import 'package:nomad/data/models/questions/input_question.dart';
import 'package:nomad/data/models/questions/match_question.dart';
import 'package:nomad/data/models/theory_border_box.dart';
import 'package:nomad/data/models/theory_image.dart';
import 'package:nomad/data/models/theory_list.dart';
import 'package:nomad/data/models/theory_list_item.dart';
import 'package:nomad/data/models/theory_space.dart';
import 'package:nomad/data/models/theory_table.dart';
import 'package:nomad/data/models/theory_table_cell.dart';
import 'package:nomad/data/models/theory_table_row.dart';
import 'package:nomad/data/models/theory_text.dart';
import 'package:nomad/data/models/questions/true_false_question.dart';
import 'package:nomad/data/models/unit.dart';
import 'package:nomad/data/models/practice.dart';
import 'package:nomad/data/models/theory.dart';

class MockChapters {
  static List<Chapter> findAll() {
    const List<Unit> units = [
      Unit(
          id: 0,
          theory: Theory(title: "-МЫН/МІН/-СЫҢ/-СІҢ/-СЫЗ/-СІЗ", items: [
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
                TheoryTableCell(content: TheoryText(text: "Мен")),
                TheoryTableCell(
                    content: TheoryList(items: [
                  TheoryListItem(
                      text: "-мын/-мін (дауыстылар, үнділерден кейін)"),
                  TheoryListItem(text: "-бын/-бін (ұяңдардан кейін)"),
                  TheoryListItem(text: "-пын/-пін (қатаңдардан кейін)")
                ])),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(
                  content: TheoryText(text: "Сен"),
                ),
                TheoryTableCell(
                  content: TheoryText(text: "-сың/-сің"),
                ),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(
                  content: TheoryText(text: "Сіз"),
                ),
                TheoryTableCell(
                  content: TheoryText(text: "-сыз/-сіз"),
                ),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(
                  content: TheoryText(text: "Ол"),
                ),
                TheoryTableCell(
                  content: TheoryText(text: "-/-"),
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
            Practice(id: 4, title: "Дұрыс/Дұрыс емес деп жазыңыз.", questions: [
              TrueFalseQuestion(text: "Мен Айдарбын", answer: false),
              TrueFalseQuestion(text: "Сен Астанадасың", answer: true),
              TrueFalseQuestion(text: "Ол Даниярмын", answer: false),
              TrueFalseQuestion(text: "Сіз Алматыдасың", answer: true),
              TrueFalseQuestion(text: "Мен оқушымын емеспін", answer: false),
              TrueFalseQuestion(text: "Сен дәрігер емессің", answer: true),
              TrueFalseQuestion(text: "Сіз мұғалімсіз емес", answer: false),
              TrueFalseQuestion(text: "Ол спортшы емес", answer: true),
              TrueFalseQuestion(text: "Сен үйдесің", answer: true),
              TrueFalseQuestion(text: "Мен даладамын", answer: true),
            ]),
            Practice(
                id: 0,
                title:
                    "Бір жолға жуан, бір жолға жіңішке жалғауды жалғап бөліп жазыңыз.",
                description:
                    "жуан: мен бала+мын, сен аға+сың,.......... жіңішке:сіз әке+сіз, сен жігітсің,............",
                questions: [
                  InputQuestion(text: "Мен мұғалім", answer: "top"),
                  InputQuestion(text: "Сен оқушы", answer: "top"),
                  InputQuestion(text: "Сіз ана", answer: "top"),
                  InputQuestion(text: "Сен спортшы", answer: "top"),
                  InputQuestion(text: "Сіз әнші", answer: "top"),
                  InputQuestion(text: "Мен қыз", answer: "top"),
                  InputQuestion(text: "Сен аружан", answer: "top"),
                  InputQuestion(text: "Сіз дәрігер", answer: "top"),
                  // InputQuestion(text: "Мен мұғалім", answer: "мін"),
                  // InputQuestion(text: "Сен оқушы", answer: "сың"),
                  // InputQuestion(text: "Сіз ана", answer: "сыз"),
                  // InputQuestion(text: "Сен спортшы", answer: "сың"),
                  // InputQuestion(text: "Сіз әнші", answer: "сіз"),
                  // InputQuestion(text: "Мен қыз", answer: "мын"),
                  // InputQuestion(text: "Сен аружан", answer: "сың"),
                  // InputQuestion(text: "Сіз дәрігер", answer: "сіз"),
                ]),
            Practice(
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
            Practice(
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
            Practice(
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
          ]),
      Unit(
          id: 1,
          theory:
              Theory(title: "-МЫН/МІН/-СЫҢ/-СІҢ/-СЫЗ/-СІЗ (СҰРАҚ) ", items: [
            TheoryTable(title: "Болымды", rows: [
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Мен")),
                TheoryTableCell(
                    content: TheoryList(items: [
                  TheoryListItem(text: "-мын/-мін"),
                  TheoryListItem(text: "-бын/-бін"),
                  TheoryListItem(text: "-пын/-пін"),
                ]))
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Сен")),
                TheoryTableCell(content: TheoryText(text: "-сың/-сің"))
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Сіз")),
                TheoryTableCell(content: TheoryText(text: "-сыз/-сіз"))
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Ол")),
                TheoryTableCell(content: TheoryText(text: "-/-"))
              ]),
            ]),
            TheorySpace(),
            TheoryTable(title: "Cұраулы", rows: [
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Мен")),
                TheoryTableCell(
                    content: TheoryList(items: [
                  TheoryListItem(text: "-мын/-мін"),
                  TheoryListItem(text: "-бын/-бін"),
                  TheoryListItem(text: "-пын/-пін"),
                ])),
                TheoryTableCell(content: TheoryText(text: "ба/бе?")),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Сен")),
                TheoryTableCell(content: TheoryText(text: "-сың/-сің")),
                TheoryTableCell(content: TheoryText(text: "ба/бе?")),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Сіз")),
                TheoryTableCell(content: TheoryText(text: "-сыз/-сіз")),
                TheoryTableCell(content: TheoryText(text: "ба/бе?")),
              ]),
              TheoryTableRow(cells: [
                TheoryTableCell(content: TheoryText(text: "Ол")),
                TheoryTableCell(content: TheoryText(text: "-/-")),
                TheoryTableCell(
                    content: TheoryList(items: [
                  TheoryListItem(text: "ма/ме?"),
                  TheoryListItem(text: "ба/бе?"),
                  TheoryListItem(text: "па/пе?"),
                ])),
              ]),
            ]),
            TheorySpace(),
            TheoryImage(imagePath: "assets/practice-images/2.png"),
            TheoryText(text: "Атың кім?"),
            TheoryText(text: "Айбек", alignment: "right"),
            TheoryText(text: "Үйленгенсің бе?"),
            TheoryText(text: "Жоқ, мен бойдақпын", alignment: "right"),
            TheoryText(text: "Жасың қаншада?"),
            TheoryText(text: "25", alignment: "right"),
            TheoryText(text: "Сен студентсің бе?"),
            TheoryText(text: "Иә, студентпін", alignment: "right"),
            TheorySpace(),
            TheoryList(items: [
              TheoryListItem(
                  text:
                      "Мен осы жерге отырамын ба? Иә, сен осы жерге отырасың."),
              TheoryListItem(
                  text:
                      "Сен мектепте мұғалімсің бе? Жоқ, мен мектепте тәрбиешімін."),
              TheoryListItem(
                  text: "Сіз жиырма бестесіз бе? Жоқ, мен жиырма алтыдамын."),
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
            TheoryText(text: "Бір сұраулы сөйлемде екі жағдай қатар келмейді."),
            TheoryText(text: "Сен қайдасың ба? – дұрыс емес "),
            TheoryText(text: "Сен үйдесің бе қайда? – дұрыс емес"),
            TheoryText(text: "Сен қайдасың? – дұрыс"),
            TheoryText(text: "Сен үйдесің бе? – дұрыс"),
          ]),
          practices: [
            Practice(
                id: 5,
                title: "Сұрақтың дұрыс жауабын табыңыз.",
                questions: [
                  MatchQuestion(
                      text: "Камера қайда?", answer: "Сенің сөмкеңде"),
                  MatchQuestion(
                      text: "Сенің көлігіңнің түсі көк пе?",
                      answer: "Жоқ, қара"),
                  MatchQuestion(
                      text: "Айдана Тараздан ба?", answer: "Жоқ, Астанадан"),
                  MatchQuestion(
                      text: "Сіздің сөмкеңіздің түсі қандай?", answer: "Қызыл"),
                  MatchQuestion(
                      text: "Сенің қарның ашты ма?", answer: "Иә, ашты"),
                  MatchQuestion(
                      text: "Дананың қалы қалай?", answer: "Жаман емес"),
                  MatchQuestion(text: "Бұл әйел кім?", answer: "Менің әпкем"),
                  MatchQuestion(
                      text: "Анардың анасы қайда?", answer: "Жұмыста"),
                ]),
            Practice(id: 6, title: "Сөздерден сөйлем құраңыз.", questions: [
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
            ]),
            Practice(
                id: 7,
                title:
                    "Сұрақты толықтырыңыз. Қалай/ қайда/ қанша/ не/ кім/ қандай/ сөздерін пайдаланыңыз.",
                questions: [
                  InputQuestion(
                      text: "Сенің ата-анаң",
                      answer: "қалай",
                      postfix: "?",
                      afterText: "Шүкір, жақсы"),
                  InputQuestion(
                      text: "Сөмкем",
                      answer: "қайда",
                      postfix: "?",
                      afterText: "Үстелде"),
                  InputQuestion(
                      text: "Сіздің",
                      answer: "қанша",
                      postfix: "балаңыз бар?",
                      afterText: "Бес"),
                  InputQuestion(
                      text: "Мына алма",
                      answer: "қанша",
                      postfix: "тұрады?",
                      afterText: "Бір келісі 450 тг"),
                  InputQuestion(
                      text: "Сенің сүйікті спортың",
                      answer: "қандай",
                      postfix: "?",
                      afterText: "Шаңғы тебу"),
                  InputQuestion(
                      text: "Бұл фотограф кісі",
                      answer: "кім",
                      postfix: "?",
                      afterText: "Менің әкем"),
                  InputQuestion(
                      text: "Сенің жаңа аяқ киіміңнің түсі",
                      answer: "қандай",
                      postfix: "?",
                      afterText: "Қара"),
                ]),
            Practice(id: 8, title: "Сұраулы сөйлем жасап жазыңыз.", questions: [
              InputQuestion(
                  text: "(аты?)",
                  answer: " Сенің атың кім?",
                  afterText: "Әсет",
                  wide: true),
              InputQuestion(
                  text: "(Ресей?)",
                  answer: "",
                  afterText: "Жоқ, ол Канададан",
                  wide: true),
              InputQuestion(
                  text: "(жасы?)", answer: "", afterText: "30", wide: true),
              InputQuestion(
                  text: "(мұғалім?)",
                  answer: "",
                  afterText: "Жоқ, мен заңгермін",
                  wide: true),
              InputQuestion(
                  text: "(үйленген?)",
                  answer: "",
                  afterText: "Ия, үйленгенмін",
                  wide: true),
              InputQuestion(
                  text: "(әйелің заңгер?)",
                  answer: "",
                  afterText: "Жоқ, ол дизайнер",
                  wide: true),
              InputQuestion(
                  text: "(оның аты?)",
                  answer: "",
                  afterText: "Оның аты – Анар",
                  wide: true),
              InputQuestion(
                  text: "(жасы?)",
                  answer: "",
                  afterText: "Ол 27 жаста",
                  wide: true),
            ])
          ]),
      Unit(
          id: 2,
          theory: Theory(
              title:
                  "-МЫЗ/-МІЗ/ -СЫҢДАР/-СІҢДЕР/-СЫЗДАР/-СІЗДЕР/-ЛАР/-ЛЕР/-ДАР/-ДЕР/-ТАР/-ТЕР",
              items: [
                TheoryImage(imagePath: "assets/practice-images/3.png"),
                TheorySpace(),
                TheoryText(text: "Біз студентпіз"),
                TheoryText(text: "Біз он тоғыздамыз"),
                TheoryText(text: "Біз жатақханада тұрамыз"),
                TheoryText(text: "Біз бүгін киноға барамыз"),
                TheoryText(text: "Біз Қазақстандықпыз"),
                TheoryText(text: "Біз университетте оқимыз"),
                TheoryText(text: "Біз болашақ инженерміз"),
                TheoryText(text: "Біз доспыз"),
                TheorySpace(),
                TheoryTable(title: "Болымды", rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Біз")),
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(
                          text: "-мыз/-міз (дауыстылар, үнділерден кейін)"),
                      TheoryListItem(text: "-быз/-біз (ұяңдардан кейін)"),
                      TheoryListItem(text: "-пыз/-піз (қатаңдардан кейін)"),
                    ]))
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Сендер")),
                    TheoryTableCell(
                        content: TheoryText(text: "-сыңдар/-сіңдер")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Сіздер")),
                    TheoryTableCell(
                        content: TheoryText(text: "-сыздар/-сіздер")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Олар")),
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "-лар/-лер/"),
                      TheoryListItem(text: "-дар/-дер/"),
                      TheoryListItem(text: "-тар/-тер/"),
                    ]))
                  ]),
                ]),
                TheorySpace(),
                TheoryTable(title: "Болымсыз", rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Біз")),
                    TheoryTableCell(content: TheoryText(text: "+ емес")),
                    TheoryTableCell(content: TheoryText(text: "-піз")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Сендер")),
                    TheoryTableCell(content: TheoryText(text: "+ емес")),
                    TheoryTableCell(content: TheoryText(text: "-сіңдер")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Сіздер")),
                    TheoryTableCell(content: TheoryText(text: "+ емес")),
                    TheoryTableCell(content: TheoryText(text: "-сіздер")),
                  ]),
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Олар")),
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "+ -лар/-лер/"),
                      TheoryListItem(text: "+ -дар/-дер/"),
                      TheoryListItem(text: "+ -тар/-тер/"),
                    ])),
                    TheoryTableCell(content: TheoryText(text: "+ емес")),
                  ]),
                ]),
                TheorySpace(),
                TheoryList(title: "Мысалдар", items: [
                  TheoryListItem(text: "Біз ересекпіз. Біз кәмелет жастамыз."),
                  TheoryListItem(text: "Сендер жігітсіңдер. Олар қыздар."),
                  TheoryListItem(
                      text: "Сіздер оқытушысыздар.  Біз студентпіз."),
                  TheoryListItem(
                      text:
                          "Мен және Айбек қазақстандықпыз. Олар шетелдіктер."),
                  TheoryListItem(
                      text: "Асқар мен Әсем жас жұбайлар. Олар дәрігерлер."),
                  TheoryListItem(
                      text: "Біз Астанада тұрамыз. Олар Таразда тұрады."),
                ]),
                TheorySpace(),
                TheoryImage(imagePath: "assets/practice-images/4.png"),
                TheorySpace(),
                TheoryList(items: [
                  TheoryListItem(text: "Біз оқушы емеспіз. Біз студентпіз."),
                  TheoryListItem(
                      text: "Біз он сегізде емеспіз. Біз жиырмадамыз."),
                  TheoryListItem(
                      text: "Сендер әлсіз емессіңдер. Сендер күштісіңдер."),
                  TheoryListItem(
                      text:
                          "Сендер стадионда жүгіресіңдер. Сендер спортшысыңдар."),
                  TheoryListItem(
                      text:
                          "Сіздер Америкада тұрасыздар. Олар Канадада тұрады."),
                ]),
                TheorySpace(),
                TheoryText(
                    text:
                        "-мыз/-міз/ -сыңдар/-сіңдер/-сыздар/-сіздер – зат есім(студент), сын есім(күшті), сан есім(жиырма), етістікке (жүгіреміз) жалғанады."),
                TheoryText(
                    text:
                        "емес – тек есім сөздерге жалғанады. Етістікке жалғанбайды."),
                TheorySpace(),
                TheoryText(text: "Біз ойнайды емеспіз."),
                TheoryText(text: "Біз ойнамаймыз."),
              ]),
          practices: [
            Practice(
                id: 9,
                title: "Сәйкес жіктік жалғауды жалғаңыз.",
                questions: [
                  InputQuestion(text: "Біз ата-ана", answer: ""),
                  InputQuestion(text: "Сендер қырықта", answer: ""),
                  InputQuestion(text: "Сіздер құрылысшы", answer: ""),
                  InputQuestion(text: "Олар студент", answer: ""),
                  InputQuestion(text: "Біз көрікті", answer: ""),
                  InputQuestion(text: "Сендер ұшқыш", answer: ""),
                  InputQuestion(text: "Сіздер қалада", answer: ""),
                  InputQuestion(text: "Олар инженер", answer: ""),
                ]),
            Practice(
                id: 10,
                title: "Дұрыс/Дұрыс емес деп жазыңыз.",
                questions: [
                  TrueFalseQuestion(text: "Біз ата-анамыз", answer: false),
                  TrueFalseQuestion(text: "Сендер жақсысыздар", answer: false),
                  TrueFalseQuestion(text: "Олар сыныптастар", answer: false),
                  TrueFalseQuestion(text: "Сіздер әкесіңдер", answer: false),
                  TrueFalseQuestion(text: "Біз жастарбыз", answer: false),
                  TrueFalseQuestion(text: "Олар зейнеткер", answer: false),
                  TrueFalseQuestion(text: "Сіздер атасыздар", answer: false),
                  TrueFalseQuestion(text: "Сендер немерелер", answer: false),
                ]),
            Practice(
                id: 11,
                title:
                    "Жіктік жалғаудың көпше түрінің болымды және болымсыз формасын жалғаңыз.",
                questions: [
                  InputQuestion(text: "Біз сәулетші", answer: ""),
                  InputQuestion(text: "сәулетші емес", answer: ""),
                  InputQuestion(text: "Сендер тұрғын", answer: ""),
                  InputQuestion(text: "тұрғын емес", answer: ""),
                  InputQuestion(text: "Сіздер зейнеткер", answer: ""),
                  InputQuestion(text: "зейнеткер емес", answer: ""),
                  InputQuestion(text: "Олар  балалар", answer: ""),
                  InputQuestion(text: "балалар емес", answer: ""),
                  InputQuestion(text: "Біз мектепте", answer: ""),
                  InputQuestion(text: "мектепте емес", answer: ""),
                  InputQuestion(text: "Сендер жаза", answer: ""),
                  InputQuestion(text: "жазбай", answer: ""),
                  InputQuestion(text: "Сіздер оқи", answer: ""),
                  InputQuestion(text: "оқымай", answer: ""),
                  InputQuestion(text: "Олар күле", answer: ""),
                  InputQuestion(text: "күлмей", answer: ""),
                ]),
            Practice(id: 12, title: "Сәйкестендіріңіз.", questions: [
              MatchQuestion(text: "Біз", answer: "отыз бестесіңдер"),
              MatchQuestion(text: "Сендер", answer: "оқушылар емес"),
              MatchQuestion(text: "Сіздер", answer: "дәрігер емеспіз"),
              MatchQuestion(text: "Олар", answer: "дұрыс емессіздер"),
              MatchQuestion(text: "Сендер", answer: "мұғалімбіз"),
              MatchQuestion(text: "Біз", answer: "ғалым емессіңдер"),
              MatchQuestion(text: "Олар", answer: "ауылда емес"),
            ])
          ]),
      Unit(
          id: 3,
          theory: Theory(
              title: "ІСТЕП ЖАТЫРМЫН/ІСТЕП ЖАТҚАН ЖОҚПЫН (НАҚ ОСЫ ШАҚ)",
              items: [
                TheoryText(text: "Мен тамақ ішіп жатырмын."),
                TheoryImage(imagePath: "assets/practice-images/5.png"),
                TheorySpace(),
                TheoryText(text: "Жаңбыр жауып жатыр."),
                TheoryImage(imagePath: "assets/practice-images/6.png"),
                TheorySpace(),
                TheoryText(text: "Біз жүгіріп жүрміз."),
                TheoryImage(imagePath: "assets/practice-images/7.png"),
                TheorySpace(),
                TheoryText(text: "Ол кітап оқып отыр."),
                TheoryText(text: "Ол кітап оқып отырған жоқ."),
                TheorySpace(),
                TheoryText(text: "Олар жүгіріп жүр."),
                TheoryText(text: "Олар жүгіріп жүрген жоқ."),
                TheorySpace(),
                TheoryText(text: "Ол тамақ ішіп жатыр"),
                TheoryText(text: "Ол тамақ ішіп жатқан жоқ."),
                TheorySpace(),
                TheoryText(text: "Нақ осы шақ:"),
                TheorySpace(),
                TheoryTable(
                    title: "Етістік + -ып,-іп,-п + жатыр, отыр, тұр, жүр",
                    rows: [
                      TheoryTableRow(cells: [
                        TheoryTableCell(
                            content: TheoryList(items: [
                          TheoryListItem(text: "Мен"),
                          TheoryListItem(text: "Сен"),
                          TheoryListItem(text: "Сіз"),
                          TheoryListItem(text: "Ол"),
                          TheoryListItem(text: "Біз"),
                          TheoryListItem(text: "Сендер"),
                          TheoryListItem(text: "Сіздер"),
                          TheoryListItem(text: "Олар"),
                        ])),
                        TheoryTableCell(
                            content:
                                TheoryText(text: "Етістік + -ып, -іп, -п")),
                        TheoryTableCell(
                            content: TheoryText(text: "Жатыр, отыр, тұр, жүр")),
                        TheoryTableCell(
                            content: TheoryList(items: [
                          TheoryListItem(text: "-мын/-мін"),
                          TheoryListItem(text: "-сың/-сің"),
                          TheoryListItem(text: "-сыз/-сіз"),
                          TheoryListItem(text: "-/-"),
                          TheoryListItem(text: "-мыз/-міз"),
                          TheoryListItem(text: "-сыңдар/сіңдер"),
                          TheoryListItem(text: "-сыздар/-сіздер"),
                          TheoryListItem(text: "-/-"),
                        ])),
                      ])
                    ]),
                TheorySpace(),
                TheoryList(items: [
                  TheoryListItem(text: "Мен жұмыс істеп отырмын"),
                  TheoryListItem(text: "Сен кітап оқып отырсың."),
                  TheoryListItem(text: "Ол тамақ ішіп отыр."),
                  TheoryListItem(text: "Біз жаңалық көріп отырмыз."),
                  TheoryListItem(text: "Сіздер ұйықтап жатырсыздар."),
                  TheoryListItem(text: "Олар кино көріп отыр."),
                ]),
                TheoryTable(rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "Мен"),
                      TheoryListItem(text: "Сен"),
                      TheoryListItem(text: "Сіз"),
                      TheoryListItem(text: "Ол"),
                      TheoryListItem(text: "Біз"),
                      TheoryListItem(text: "Сендер"),
                      TheoryListItem(text: "Сіздер"),
                      TheoryListItem(text: "Олар"),
                    ])),
                    TheoryTableCell(
                        content: TheoryText(text: "Етістік + -ып, -іп, -п")),
                    TheoryTableCell(
                        content: TheoryText(
                            text: "Жатқан, отырған, тұрған, жүрген")),
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "жоқпын"),
                      TheoryListItem(text: "жоқсың"),
                      TheoryListItem(text: "жоқсыз"),
                      TheoryListItem(text: "жоқ"),
                      TheoryListItem(text: "жоқпыз"),
                      TheoryListItem(text: "жоқсыңдар"),
                      TheoryListItem(text: "жоқсыздар"),
                      TheoryListItem(text: "жоқ"),
                    ]))
                  ])
                ]),
                TheorySpace(),
                TheoryList(items: [
                  TheoryListItem(text: "Мен теледидар көріп жатқан жоқпын."),
                  TheoryListItem(text: "Сіз Жұмыс істеп отырған жоқсыз."),
                  TheoryListItem(text: "Ол тамақ ішіп отырған жоқ."),
                  TheoryListItem(text: "Біз кешкі ас ішіп жатқан жоқпыз."),
                  TheoryListItem(text: "Сендер мені тыңдап жатқан жоқсыңдар."),
                  TheoryListItem(text: "Олар үй жұмысын жасап жатқан жоқ."),
                ]),
                TheorySpace(),
                TheoryText(
                    text:
                        "Етістік + -ып,-іп,-п + жатыр, отыр, тұр, жүр = қазір болып жатқан іс-әрекет. Нақ осы шақта тек екі етістікке ғана -а және -е  жұрнақтары жалғанады: бар + -а, кел + -е"),
                TheorySpace(),
                TheoryText(text: "Мен бара жатырмын", alignment: "center"),
                TheoryText(text: "Ол келе жатыр", alignment: "center"),
                TheoryText(
                    text: "Мен жұмыс істеп жатырмын.", alignment: "center"),
                TheoryText(
                    text: "Мен теледидар көріп жатқан жоқпын.",
                    alignment: "center"),
                TheorySpace(),
                TheoryImage(imagePath: "assets/practice-images/8.png"),
                TheoryTable(hasBorder: false, rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(content: TheoryText(text: "Өткен шақ")),
                    TheoryTableCell(content: TheoryText(text: "Қазір")),
                    TheoryTableCell(content: TheoryText(text: "Келер шақ")),
                  ])
                ]),
                TheoryList(items: [
                  TheoryListItem(
                      text:
                          "Тыныштық сақтаңызшы. Мен жұмыс істеп жатырмын (=Мен қазір жұмыс істеп жатырмын)."),
                  TheoryListItem(
                      text:
                          "Бұл – Сара. Ол қоңыр күрте киіп жатыр (=Ол қазір қоңыр күрте киіп жатыр)."),
                  TheoryListItem(
                      text:
                          "Ауа-райы тамаша. Жаңбыр жауып тұрған жоқ (=Жаңбыр қазір жауып тұрған жоқ)."),
                  TheoryListItem(
                      text:
                          "Балалар қайда? Олар паркте ойнап жатыр (=Олар қазір паркте ойнап жатыр)."),
                  TheoryListItem(
                      text:
                          "Теледидарды сөндіре берсең болады. Мен оны көріп жатқан жоқпын (=Мен оны қазір  көріп жатқан жоқпын)."),
                ])
              ]),
          practices: [
            Practice(
                id: 13,
                title:
                    "Мына етістіктерді пайдаланып, сөйлемдерді толықтырыңыз.",
                description:
                    "Салу, пісіру, бару, шомылу, тұру, қалу, жүзу, жұмыс істеу",
                questions: [
                  InputQuestion(text: "Тыныштық сақтаңызшы. Мен", answer: ""),
                  InputQuestion(
                      text: "«Айдар қайда?»  «Айдар асүйде. Ол",
                      answer: "",
                      postfix: "»"),
                  InputQuestion(
                      text: "«Мен жаяу",
                      answer: "",
                      postfix: "». «Кешірім өтінемін!»"),
                  InputQuestion(text: "Қараңыз! Өзенде біреу", answer: ""),
                  InputQuestion(
                      text: "Біз демалыстамыз. Біз орталық қонақүйде",
                      answer: ""),
                  InputQuestion(
                      text: "«Айдана қайда?»  «Айдана суға",
                      answer: "",
                      postfix: "»"),
                  InputQuestion(
                      text: "Олар қазір қала орталығынан жаңа қонақүй",
                      answer: ""),
                ]),
            Practice(
                id: 14,
                title: "Суретке қараңыз. Айғаным туралы сөйлемдерді жазыңыз.",
                description:
                    "Етістік + -ып,-іп,-п жұрнақтары + жатыр/жатқан жоқ формаларын қолданыңыз.",
                extraItem:
                    TheoryImage(imagePath: "assets/practice-images/9.png"),
                questions: [
                  InputQuestion(text: "(түскі ас ішу)", answer: "", wide: true),
                  InputQuestion(
                      text: "(теледидар көру)", answer: "", wide: true),
                  InputQuestion(text: "(еденде отыру)", answer: "", wide: true),
                  InputQuestion(text: "(кітап оқу)", answer: "", wide: true),
                  InputQuestion(
                      text: "(пианинода ойнау)", answer: "", wide: true),
                  InputQuestion(text: "(күлу)", answer: "", wide: true),
                  InputQuestion(text: "(бас киім кию)", answer: "", wide: true),
                  InputQuestion(text: "(хат жазу)", answer: "", wide: true),
                ]),
            Practice(
                id: 15,
                title: "Шашылған сөздерден сөйлемдер құрастырып жазыңыздар.",
                description:
                    "Сөйлемдердің мағынасы дәл қазір не болып жатқанын көрсетуі тиіс.",
                questions: [
                  InputQuestion(
                      text: "(мен/шашымды/жуу)", answer: "", wide: true),
                  InputQuestion(text: "(қар/жауу)", answer: "", wide: true),
                  InputQuestion(
                      text: "(мен/креслода/отыру)", answer: "", wide: true),
                  InputQuestion(text: "(мен/жеу)", answer: "", wide: true),
                  InputQuestion(text: "(жаңбыр/жауу)", answer: "", wide: true),
                  InputQuestion(
                      text: "(мен/қазақша/үйрену)", answer: "", wide: true),
                  InputQuestion(
                      text: "(мен/әуен/тыңдау)", answer: "", wide: true),
                  InputQuestion(text: "(күн/шығу)", answer: "", wide: true),
                  InputQuestion(
                      text: "(мен/аяқ киім/кию)", answer: "", wide: true),
                  InputQuestion(
                      text: "(мен/газет/оқу)", answer: "", wide: true),
                ])
          ]),
      Unit(
          id: 4,
          theory: Theory(
              title: "ІСТЕП ЖАТЫРСЫҢ БА? (НАҚ ОСЫ ШАҚТЫҢ СҰРАУЛЫ ФОРМАСЫ)",
              items: [
                TheoryText(text: " Не істеп отырсың?"),
                TheoryImage(imagePath: "assets/practice-images/10.png"),
                TheorySpace(),
                TheoryTable(rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "Мен"),
                      TheoryListItem(text: "Сен"),
                      TheoryListItem(text: "Сіз"),
                      TheoryListItem(text: "Ол"),
                      TheoryListItem(text: "Біз"),
                      TheoryListItem(text: "Сендер"),
                      TheoryListItem(text: "Сіздер"),
                      TheoryListItem(text: "Олар"),
                    ])),
                    TheoryTableCell(
                        content: TheoryText(text: "Етістік + -ып, -іп, -п")),
                    TheoryTableCell(
                        content: TheoryText(text: "жатыр, отыр, тұр, жүр")),
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "-мын/-мін"),
                      TheoryListItem(text: "-сың/-сің"),
                      TheoryListItem(text: "-сыз/-сіз"),
                      TheoryListItem(text: "-/-"),
                      TheoryListItem(text: "-мыз/-міз"),
                      TheoryListItem(text: "-сыңдар/сіңдер"),
                      TheoryListItem(text: "-сыздар/-сіздер"),
                      TheoryListItem(text: "-/-"),
                    ])),
                  ])
                ]),
                TheorySpace(),
                TheoryTable(rows: [
                  TheoryTableRow(cells: [
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "Мен"),
                      TheoryListItem(text: "Сен"),
                      TheoryListItem(text: "Сіз"),
                      TheoryListItem(text: "Ол"),
                      TheoryListItem(text: "Біз"),
                      TheoryListItem(text: "Сендер"),
                      TheoryListItem(text: "Сіздер"),
                      TheoryListItem(text: "Олар"),
                    ])),
                    TheoryTableCell(
                        content: TheoryText(text: "Етістік + -ып, -іп, -п")),
                    TheoryTableCell(
                        content: TheoryText(text: "жатыр, отыр, тұр, жүр")),
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "-мын/-мін"),
                      TheoryListItem(text: "-сың/-сің"),
                      TheoryListItem(text: "-сыз/-сіз"),
                      TheoryListItem(text: "-/-"),
                      TheoryListItem(text: "-мыз/-міз"),
                      TheoryListItem(text: "-сыңдар/сіңдер"),
                      TheoryListItem(text: "-сыздар/-сіздер"),
                      TheoryListItem(text: "-/-"),
                    ])),
                    TheoryTableCell(
                        content: TheoryList(items: [
                      TheoryListItem(text: "ба/бе?"),
                      TheoryListItem(text: "ба/бе?"),
                      TheoryListItem(text: "ба/бе?"),
                      TheoryListItem(text: "ма/ме?"),
                      TheoryListItem(text: "ба/бе?"),
                      TheoryListItem(text: "ма/ме?"),
                      TheoryListItem(text: "ма/ме?"),
                      TheoryListItem(text: "ма/ме?"),
                    ])),
                  ])
                ]),
                TheorySpace(),
                TheoryList(items: [
                  TheoryListItem(
                      text: "Кітап оқып отырсың ба? Иә, кітап оқып отырмын"),
                  TheoryListItem(
                      text: "Жаңбыр жауып жатыр ма? Иә, қолшатыр алу керек."),
                  TheoryListItem(
                      text: "Сіз неге пальто киіп жатырсыз? Дала суық сияқты."),
                  TheoryListItem(
                      text: "Болат не істеп жатыр? Ол газет оқып жатыр."),
                  TheoryListItem(
                      text: "Қара! Бұл Әлия ғой! Ол қайда бара жатыр?"),
                  TheoryListItem(
                      text:
                          "Сен кімді күтіп отырсың? Айдананы күтіп отырсың ба?"),
                ]),
                TheorySpace(),
                TheoryText(
                    text:
                        "Отыр – іс-әрекеттің отырып орындалып жатқанын білдіреді."),
                TheoryList(items: [
                  TheoryListItem(text: "Ол кітап оқып отыр."),
                  TheoryListItem(text: "Сен тамақ ішіп отрысың ба?"),
                  TheoryListItem(text: "Сіз не істеп отырсыз?"),
                ]),
                TheorySpace(),
                TheoryText(
                    text:
                        "Тұр – іс-әрекеттің  түрегеп  немесе тік тұрып орындалатынын  білдіреді. Сонымен Сонымен қатар жансыз заттардың бір қалыпты жұмыс істеп тұрғанын білдіреді. (Ол телефонмен сөйлесіп тұр (ол – жанды). Теледидар қосылып тұр. (теледидар – жансыз)."),
                TheoryList(items: [
                  TheoryListItem(text: "Асқар Мұратпен сөйлесіп тұр."),
                  TheoryListItem(text: "Сен ыдыс жуып тұрсың ба?"),
                  TheoryListItem(text: "Ол айнаға қарап тұр."),
                ]),
                TheorySpace(),
                TheoryText(
                    text:
                        "Жүр – нақ осы шақтың формасында тұрғанымен, белгілі бір уақытқа дейін орындалатын дағдылы іс-әрекетті білдіреді."),
                TheoryList(items: [
                  TheoryListItem(
                      text:
                          "Мен қазақ тілін оқып жүрмін. Мен қаза тілін оқимын (қазіргі уақытта)"),
                  TheoryListItem(text: "Әсел ауырып жүр."),
                ]),
                TheorySpace(),
                TheoryText(
                    text:
                        "Жатыр – іс-әрекеттің дәл қазір болып жатқанын білдіреді. Жатыр қалып етістігі қалған үш қалып (отыр, жүр, отыр) етістіктерінің орнына жүре береді."),
                TheoryList(items: [
                  TheoryListItem(
                      text: "Мен тамақ ішіп жатырмын. Мен тамақ ішіп отырмын."),
                  TheoryListItem(text: "Ол ыдыс жуып жатыр. Ол ыдыс жуып тұр."),
                  TheoryListItem(
                      text: "Ол Астанада оқып жатыр. Ол Астанада оқып жүр."),
                ]),
                TheorySpace(),
              ]),
          practices: [
            // UnitPracticeModel(
            //     id: 16,
            //     title:
            //         "Суретке қараңыз және  берілген сөздерден сұраулы сөйлем жасап жазыңыз.",
            //     questions: [
            //       InputImageQuestion(
            //           text: "(теледидар/сен/жатыр/қарау/ ба?)",
            //           imagePath: "assets/practice-images/11.png",
            //           answer: "",
            //           wide: true,
            //           afterText: "жоқ, қарап жатқан жоқпын."),
            //       InputImageQuestion(
            //           text: "(сіз/бар/ба/үйге/жатыр?)",
            //           imagePath: "assets/practice-images/12.png",
            //           answer: "",
            //           wide: true,
            //           afterText: "Иә, ертең көріскенше!"),
            //       InputImageQuestion(
            //           text: "(жауу/жаңбыр/тұр/ма?)",
            //           imagePath: "assets/practice-images/13.png",
            //           answer: "",
            //           wide: true,
            //           afterText: "Жоқ, жауып тұрған жоқ."),
            //       InputImageQuestion(
            //           text: "саған/ма/кино/ұнау/жатыр?)",
            //           imagePath: "assets/practice-images/14.png",
            //           answer: "",
            //           wide: true,
            //           afterText: "иә, өте күлкілі"),
            //       InputImageQuestion(
            //           text: "(істеу/сағат/жұмыс/тұр/ма?)",
            //           imagePath: "assets/practice-images/15.png",
            //           answer: "",
            //           wide: true,
            //           afterText: "жоқ, істеп тұрған жоқ"),
            //       InputImageQuestion(
            //           text: "(күту/автобус/сіз/тұр/ба?)",
            //           imagePath: "assets/practice-images/16.png",
            //           answer: "",
            //           wide: true,
            //           afterText: "жоқ, такси күтіп тұрмын"),
            //     ]),
            // UnitPracticeModel(
            //     id: 17,
            //     title:
            //         "Суретке қараңыз және сөйлемді толықтырыңыз. Мына етістіктерді қолданыңыз:",
            //     description: "жылау	жеу, бару, күлу, қарау, оқу",
            //     questions: [
            //       InputImageQuestion(
            //           text: "Сен не",
            //           imagePath: "assets/practice-images/17.png",
            //           answer: "",
            //           postfix: "жатырсың?"),
            //       InputImageQuestion(
            //           text: "Ол қайда",
            //           imagePath: "assets/practice-images/18.png",
            //           answer: "",
            //           postfix: "жатыр?"),
            //       InputImageQuestion(
            //           text: "Сіз не",
            //           imagePath: "assets/practice-images/19.png",
            //           answer: "",
            //           postfix: "жатырсыз?"),
            //       InputImageQuestion(
            //           text: "Сен неге",
            //           imagePath: "assets/practice-images/20.png",
            //           answer: "",
            //           postfix: "жатырсың?"),
            //       InputImageQuestion(
            //           text: "Олар қайда",
            //           imagePath: "assets/practice-images/21.png",
            //           answer: "",
            //           postfix: "тұр?"),
            //       InputImageQuestion(
            //           text: "Ол неге",
            //           imagePath: "assets/practice-images/22.png",
            //           answer: "",
            //           postfix: "жатыр?"),
            //     ]),
            Practice(
                id: 18,
                title:
                    "Мына сөздерден сұраулы сөйлем жасаңыз. Сөздерді орын тәртібімен дұрыс орналастырыңыз.",
                questions: [
                  InputQuestion(
                      text: "(Арман/жатыр/істеп/жұмыс/ма/бүгін)",
                      answer: "",
                      wide: true),
                  InputQuestion(
                      text: "(істеп/балалар/не/жатыр)", answer: "", wide: true),
                  InputQuestion(
                      text: "(мені/тыңдап/сен/ба/отырсың)",
                      answer: "",
                      wide: true),
                  InputQuestion(
                      text: "(достарың/сенің/бара/қайда/жатыр)",
                      answer: "",
                      wide: true),
                  InputQuestion(
                      text: "(теледидар/ата-анаңыз/отыр/ма/көріп)",
                      answer: "",
                      wide: true),
                  InputQuestion(
                      text: "(Жанна/пісіріп/не/жатыр)", answer: "", wide: true),
                  InputQuestion(
                      text: "(маған/сен/отырсың/қарап/неге)",
                      answer: "",
                      wide: true),
                  InputQuestion(
                      text: "(ма/келе/автобус/жатыр)", answer: "", wide: true),
                ])
          ])
    ];

    const List<Chapter> chapters = [
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
          units: [
            Unit(
                id: 5,
                theory: Theory(title: "Example", items: []),
                practices: [])
          ])
    ];

    return chapters;
  }
}
