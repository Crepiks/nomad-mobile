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
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 6,
          ),
          Text(
            "Действия",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 14,
          ),
          ProfileActionLink(
            text: "Редактировать",
            icon: FaIcon(
              FontAwesomeIcons.userEdit,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
          ProfileActionLink(
            text: "Купить премиум",
            icon: FaIcon(
              FontAwesomeIcons.creditCard,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
          ProfileActionLink(
            text: "Сменить пароль",
            icon: FaIcon(
              FontAwesomeIcons.lock,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Уведомления",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 14,
          ),
          ProfileActionLink(
            text: "Уведомления",
            icon: FaIcon(
              FontAwesomeIcons.bell,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Прочие",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 14,
          ),
          ProfileActionLink(
            text: "Пожаловаться",
            icon: FaIcon(
              FontAwesomeIcons.bug,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
          ProfileActionLink(
            text: "Удалить аккаунт",
            icon: FaIcon(
              FontAwesomeIcons.trashAlt,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
          ProfileActionLink(
            text: "Выйти",
            icon: FaIcon(
              FontAwesomeIcons.signOutAlt,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
