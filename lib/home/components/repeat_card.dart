import 'package:flutter/material.dart';
import 'package:nomad/common/constants/app_colors.dart';

class RepeatCard extends StatelessWidget {
  final String title;
  final String description;

  const RepeatCard({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
          color: AppColors.primary,
          image: DecorationImage(
              scale: 3,
              alignment: Alignment(2, -1.5),
              image: AssetImage('assets/images/chapter-card-image.png')),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(height: 1.2),
              ),
            ],
          ),
          Container(
              width: double.infinity,
              height: 16,
              decoration: const BoxDecoration(
                  color: Color(0xFFF0A500),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 16,
                  width: 100,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ))
        ],
      ),
    );
  }
}
