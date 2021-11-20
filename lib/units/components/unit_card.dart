import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';

typedef TapAction = void Function();

class UnitCard extends StatelessWidget {
  final String title;
  final TapAction? onTap;

  const UnitCard({Key? key, required this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        width: double.infinity,
        // height: 70,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.book,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: AppColors.blackColor80, fontSize: 17),
              ),
            ),
            const SizedBox(width: 10),
            const FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 14,
              color: AppColors.blackColor60,
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
      onPressed: () {
        if (onTap != null) {
          onTap!();
        }
      },
    );
  }
}
