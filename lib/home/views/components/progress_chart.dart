import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:nomad/common/colors.dart';

class ProgressChart extends StatefulWidget {
  const ProgressChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProgressChartState();
}

class ProgressChartState extends State<ProgressChart> {
  final Color barBackgroundColor = Colors.white;
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: borderColor),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const Text(
                    'Прогресс',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 24,
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
    Color barColor = primaryColor,
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
              5,
            );
          case 1:
            return makeGroupData(
              1,
              6.5,
            );
          case 2:
            return makeGroupData(
              2,
              5,
            );
          case 3:
            return makeGroupData(
              3,
              7.5,
            );
          case 4:
            return makeGroupData(
              4,
              9,
            );
          case 5:
            return makeGroupData(
              5,
              11.5,
            );
          case 6:
            return makeGroupData(
              6,
              6.5,
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
                return 'Пн';
              case 1:
                return 'Вт';
              case 2:
                return 'Ср';
              case 3:
                return 'Чт';
              case 4:
                return 'Пт';
              case 5:
                return 'Сб';
              case 6:
                return 'Вс';
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
}