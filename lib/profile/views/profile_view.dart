import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/profile/views/components/premium_card.dart';
import 'package:nomad/profile/views/components/profile_actions.dart';
import 'package:nomad/profile/views/components/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: ListView(
          children: const [
            ProfileCard(),
            SizedBox(height: 10),
            PremiumCard(),
            SizedBox(height: 10),
            ProfileActions()
          ],
        ));
  }
}
