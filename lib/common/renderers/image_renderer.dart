import "package:flutter/material.dart";
import 'package:nomad/data/models/theory_image.dart';

class ImageRenderer extends StatelessWidget {
  final TheoryImage image;

  const ImageRenderer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image.imagePath), fit: BoxFit.contain)),
    );
  }
}
