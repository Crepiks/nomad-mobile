import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:nomad/analytics/views/leaderboard_view.dart';
import 'package:nomad/data/models/user.dart';
import 'package:nomad/layouts/components/bottom_navigation.dart';
import 'package:nomad/home/views/home_view.dart';
import 'package:nomad/layouts/safe_area_layout.dart';
import 'package:nomad/chapters/views/chapters_view.dart';
import 'package:nomad/profile/views/profile_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int activeScreenIndex = 0;
  String userFirstName = "";
  String userLastName = "";
  bool hasSubscription = false;

  setScreen(index) {
    setState(() {
      activeScreenIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeView(
        navigateToPage: setScreen,
        user: User(
            firstName: userFirstName,
            lastName: userLastName,
            hasSubscription: hasSubscription),
      ),
      const LeaderboardView(),
      const LessonsView(),
      ProfileView(
        user: User(
            firstName: userFirstName,
            lastName: userLastName,
            hasSubscription: hasSubscription),
      )
    ];

    return SafeAreaLayout(
      child: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: screens[activeScreenIndex]),
            Container(
              alignment: Alignment.bottomCenter,
              child: BottomNavigation(
                activeIndex: activeScreenIndex,
                onItemClick: setScreen,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      userFirstName = prefs.getString("userFirstName") ?? "";
      userLastName = prefs.getString("userLastName") ?? "";
      hasSubscription = prefs.getBool("hasSubscription") ?? false;
    });
  }
}
