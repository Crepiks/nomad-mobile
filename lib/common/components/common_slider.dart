import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/slide.dart';

class CommonSlider extends StatefulWidget {
  const CommonSlider(
      {Key? key, required this.slides, required this.onChangePage})
      : super(key: key);

  final List<Slide> slides;
  final Function onChangePage;

  @override
  CommonSliderState createState() => CommonSliderState();
}

class CommonSliderState extends State<CommonSlider> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _controller,
        onPageChanged: (index) {
          widget.onChangePage(index);
        },
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.slides.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildSlide(
              imagePath: widget.slides[index].imagePath,
              text: widget.slides[index].text);
        });
  }

  Widget _buildSlide({required String imagePath, required String text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Image(
            image: AssetImage(imagePath),
            width: double.infinity,
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            text,
            style: const TextStyle(
                color: AppColors.black, fontSize: 20, height: 1.3),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
