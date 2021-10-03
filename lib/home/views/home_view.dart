import 'package:flutter/material.dart';
import 'package:nomad/home/views/components/header.dart';
import 'package:nomad/home/views/components/progress_chart.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: ListView(
        children: const [
          Header(),
          SizedBox(
            height: 10,
          ),
          ProgressChart()
        ],
      ),
    );
  }
}
