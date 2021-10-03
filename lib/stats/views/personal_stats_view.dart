import 'package:flutter/material.dart';
import 'package:nomad/stats/views/components/progress_chart.dart';

class PersonalStatsView extends StatefulWidget {
  const PersonalStatsView({Key? key}) : super(key: key);

  @override
  _PersonalStatsViewState createState() => _PersonalStatsViewState();
}

class _PersonalStatsViewState extends State<PersonalStatsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [ProgressChart()],
    );
  }
}
