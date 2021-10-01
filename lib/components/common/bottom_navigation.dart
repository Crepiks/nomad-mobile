import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key, this.onItemClick}) : super(key: key);

  final dynamic onItemClick;
  final double iconSize = 26;

  vibrate() {
    HapticFeedback.mediumImpact();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 6,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(0);
            },
            icon: FaIcon(
              FontAwesomeIcons.home,
              size: iconSize,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(1);
            },
            icon: FaIcon(
              FontAwesomeIcons.chartPie,
              size: iconSize,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(2);
            },
            icon: FaIcon(
              FontAwesomeIcons.book,
              size: iconSize,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          IconButton(
            onPressed: () {
              vibrate();
              onItemClick(3);
            },
            icon: FaIcon(
              FontAwesomeIcons.solidUser,
              size: iconSize,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
