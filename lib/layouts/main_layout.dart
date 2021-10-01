import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:nomad/components/common/bottom_navigation.dart';
import 'package:nomad/home/home_view.dart';
import 'package:nomad/lessons/lessons_view.dart';
import 'package:nomad/profile/profile_view.dart';
import 'package:nomad/stats/stats_view.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final screens = const [HomeView(), StatsView(), LessonsView(), ProfileView()];
  int activeScreenIndex = 0;

  setScreen(index) {
    setState(() {
      activeScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: screens[activeScreenIndex]),
            Container(
              padding: const EdgeInsets.only(right: 20, bottom: 36, left: 20),
              alignment: Alignment.bottomCenter,
              child: BottomNavigation(
                onItemClick: setScreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
