import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  final double iconSize = 26;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 6,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(
            FontAwesomeIcons.home,
            size: iconSize,
            color: Colors.black.withOpacity(0.7),
          ),
          FaIcon(
            FontAwesomeIcons.chartPie,
            size: iconSize,
            color: Colors.black.withOpacity(0.7),
          ),
          FaIcon(
            FontAwesomeIcons.book,
            size: iconSize,
            color: Colors.black.withOpacity(0.7),
          ),
          FaIcon(
            FontAwesomeIcons.solidUser,
            size: iconSize,
            color: Colors.black.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}
