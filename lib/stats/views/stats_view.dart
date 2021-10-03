import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomad/stats/views/components/tabs.dart';

class StatsView extends StatefulWidget {
  const StatsView({Key? key}) : super(key: key);

  @override
  _StatsViewState createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
  int activeIndex = 0;

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
    return ListView(children: [
      const SizedBox(
        height: 10,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Tabs(
            activeIndex: activeIndex,
            onTabClick: onTabClick,
          ))
    ]);
  }
}
