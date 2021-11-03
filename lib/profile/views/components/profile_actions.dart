import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/action_button.dart';
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
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 6, 0, 14),
            child: ActionsTitle(text: "Действия"),
          ),
          ProfileActionLink(
              onClick: () {},
              text: "Редактировать",
              icon: FaIconTemplate(faIcon: FontAwesomeIcons.userEdit)),
          ProfileActionLink(
              onClick: () {},
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
              onClick: () {
                buildDeleteAccountSheet(context);
              },
              text: "Удалить аккаунт",
              icon: FaIconTemplate(faIcon: FontAwesomeIcons.trashAlt)),
          ProfileActionLink(
              onClick: () {
                buildLogoutBottomSheet(context);
              },
              text: "Выйти",
              icon: FaIconTemplate(faIcon: FontAwesomeIcons.signOutAlt)),
        ],
      ),
    );
  }

  buildDeleteAccountSheet(context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.whiteColor,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Уверены?",
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Если вы удалите аккаунт, то все ваши данные сотрутся и их нельзя будет восстановить. Уверены, что хотите удалить аккаунт?",
                    style: TextStyle(
                        color: AppColors.blackColor80,
                        fontSize: 18,
                        height: 1.3),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                      child: Text(
                        "Удалить аккаунт",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ));
  }

  buildLogoutBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.whiteColor,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Выход",
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Уверены, что хотите выйти из аккаунта? Чтобы пользоваться приложением вам придется войти снова",
                    style: TextStyle(
                        color: AppColors.blackColor80,
                        fontSize: 18,
                        height: 1.3),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                      child: Text(
                        "Выйти с аккаунта",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ));
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
