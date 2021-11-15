import "package:flutter/material.dart";
import 'package:nomad/data/models/theory_image.dart';

class TheoryImageRenderer extends StatelessWidget {
  const TheoryImageRenderer({Key? key, required this.item}) : super(key: key);

  final TheoryImage item;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(item.imagePath), fit: BoxFit.contain)),
    );
  }
}
