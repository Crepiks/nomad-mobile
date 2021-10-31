import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/profile/views/components/profile_action_link.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.borderColor),
          borderRadius: const BorderRadius.all(Radius.circular(22))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 6, 0, 14),
            child: ActionsTitle(text: "Действия"),
          ),
          ProfileActionLink(
              text: "Редактировать",
              icon: FaIconTemplate(faIcon: FontAwesomeIcons.userEdit)),
          ProfileActionLink(
              text: "Сменить пароль",
              icon: FaIconTemplate(faIcon: FontAwesomeIcons.lock)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: ActionsTitle(text: "Прочие"),
          ),
          ProfileActionLink(
              text: "Удалить аккаунт",
              icon: FaIconTemplate(faIcon: FontAwesomeIcons.trashAlt)),
          ProfileActionLink(
              text: "Выйти",
              icon: FaIconTemplate(faIcon: FontAwesomeIcons.signOutAlt)),
        ],
      ),
    );
  }
}

class ActionsTitle extends StatelessWidget {
  const ActionsTitle({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    );
  }
}

class FaIconTemplate extends StatelessWidget {
  const FaIconTemplate({Key? key, required this.faIcon}) : super(key: key);

  final IconData faIcon;

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      faIcon,
      size: 20,
      color: AppColors.primaryColor,
    );
  }
}
