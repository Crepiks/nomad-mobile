import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/profile/views/components/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
      child: Column(
        children: const [ProfileCard()],
      ),
    );
  }
}
