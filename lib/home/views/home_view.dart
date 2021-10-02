import 'package:flutter/material.dart';
import 'package:nomad/home/views/components/progress_chart.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
      child: Column(
        children: const [ProgressChart()],
      ),
    );
  }
}
