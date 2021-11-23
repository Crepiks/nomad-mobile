import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/data/models/user.dart';
import 'package:nomad/profile/components/premium_card.dart';
import 'package:nomad/profile/components/profile_actions.dart';
import 'package:nomad/profile/components/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key, required this.user, required this.onUpdateUser})
      : super(key: key);

  final User user;
  final Function onUpdateUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: ListView(
          children: [
            ProfileCard(
              firstName: user.firstName,
              lastName: user.lastName,
              hasSubscription: user.hasSubscription,
            ),
            const SizedBox(height: 14),
            const PremiumCard(),
            const SizedBox(height: 14),
            ProfileActions(
              onUpdateUser: () {
                onUpdateUser();
              },
            )
          ],
        ));
  }
}
