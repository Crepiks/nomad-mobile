import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/store/score.dart';

typedef ShowMoreTap = void Function();

class ProgressChart extends StatefulWidget {
  final ShowMoreTap onShowMoreTap;
  const ProgressChart({Key? key, required this.onShowMoreTap})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => ProgressChartState();
}

class ProgressChartState extends State<ProgressChart> {
  final Color barBackgroundColor = Colors.white;
  final Duration animDuration = const Duration(milliseconds: 250);
  int lastDayScore = 0;
  int touchedIndex = -1;

  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.border),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 12, right: 20, bottom: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(height: 5),
                  const Text(
                    'Активность',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: BarChart(
                        mainBarData(),
                        swapAnimationDuration: animDuration,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    Color barColor = AppColors.primary,
    double width = 24,
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
            y: y,
            colors: [barColor],
            width: width,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
      ],
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(
              0,
              0,
            );
          case 1:
            return makeGroupData(
              1,
              0,
            );
          case 2:
            return makeGroupData(
              2,
              0,
            );
          case 3:
            return makeGroupData(
              3,
              0,
            );
          case 4:
            return makeGroupData(
              4,
              0,
            );
          case 5:
            return makeGroupData(
              5,
              0,
            );
          case 6:
            return makeGroupData(
              6,
              lastDayScore.toDouble(),
            );
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(enabled: false),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Чт';
              case 1:
                return 'Пт';
              case 2:
                return 'Сб';
              case 3:
                return 'Вс';
              case 4:
                return 'Пн';
              case 5:
                return 'Вт';
              case 6:
                return 'Ср';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }

  _loadScore() async {
    final score = await getScore();
    setState(() {
      lastDayScore = score;
    });
  }
}
