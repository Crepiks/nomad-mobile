import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/user_score.dart';

class ScoreComparison extends StatelessWidget {
  const ScoreComparison({Key? key, required this.users}) : super(key: key);

  final List<UserScore> users;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: users
          .map((user) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: _buildUserCard(
                    user.name, user.avatar, user.score, user.important),
              ))
          .toList(),
    );
  }
}

Widget _buildUserCard(String name, String avatar, int score, bool important) {
  return Container(
    width: double.infinity,
    padding:
        EdgeInsets.symmetric(horizontal: 16, vertical: important ? 14 : 12),
    margin: EdgeInsets.symmetric(horizontal: important ? 0 : 16),
    decoration: BoxDecoration(
        color: important ? AppColors.background : AppColors.white,
        border: Border.all(width: 1, color: AppColors.border),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(avatar), fit: BoxFit.contain),
                  shape: BoxShape.circle),
            ),
            const SizedBox(width: 10),
            Text(name,
                style: TextStyle(
                    color: important
                        ? AppColors.black
                        : AppColors.black.withOpacity(0.7),
                    fontSize: 15))
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              score.toString(),
              style: TextStyle(
                  color: important
                      ? AppColors.black
                      : AppColors.black.withOpacity(0.7),
                  fontSize: 16),
            ),
            const SizedBox(width: 10),
            const FaIcon(
              FontAwesomeIcons.fire,
              size: 18,
              color: AppColors.primary,
            )
          ],
        )
      ],
    ),
  );
}
