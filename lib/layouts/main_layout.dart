import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:nomad/components/common/bottom_navigation.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
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
              child: const Text("hello"),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, bottom: 36, left: 20),
              alignment: Alignment.bottomCenter,
              child: const BottomNavigation(),
            ),
          ],
        ),
      ),
    );
  }
}
