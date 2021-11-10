import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomad/analytics/components/analytics_tabs.dart';
import 'package:nomad/analytics/views/leaderboard_view.dart';
import 'package:nomad/analytics/views/personal_analytics_view.dart';

class AnalyticsView extends StatefulWidget {
  const AnalyticsView({Key? key}) : super(key: key);

  @override
  _StatsViewState createState() => _StatsViewState();
}

class _StatsViewState extends State<AnalyticsView> {
  int activeIndex = 0;
  final screens = const [PersonalStatsView(), LeaderBoardView()];

  onTabClick(index) {
    if (activeIndex == index) return;

    vibrate();
    setState(() {
      activeIndex = index;
    });
  }

  vibrate() {
    HapticFeedback.mediumImpact();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.only(top: 60), children: [
      Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: AnalyticsTabs(
          activeIndex: activeIndex,
          onActiveIndexChange: onTabClick,
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: screens[activeIndex],
      )
    ]);
  }
}
