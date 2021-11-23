import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/common/components/action_button.dart';
import 'package:nomad/onboarding/views/onboarding_view.dart';
import 'package:nomad/profile/components/profile_action_link.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.border),
          borderRadius: const BorderRadius.all(Radius.circular(22))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 6, 0, 14),
            child: ActionsTitle(text: "Действия"),
          ),
          ProfileActionLink(
              onClick: () {},
              text: "Редактировать",
              icon: const FaIconTemplate(faIcon: FontAwesomeIcons.userEdit)),
          ProfileActionLink(
              onClick: () {},
              text: "Сменить пароль",
              icon: const FaIconTemplate(faIcon: FontAwesomeIcons.lock)),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 14),
            child: ActionsTitle(text: "Прочие"),
          ),
          ProfileActionLink(
              onClick: () {
                buildDeleteAccountSheet(context);
              },
              text: "Удалить аккаунт",
              icon: const FaIconTemplate(faIcon: FontAwesomeIcons.trashAlt)),
          ProfileActionLink(
              onClick: () {
                buildLogoutBottomSheet(context);
              },
              text: "Выйти",
              icon: const FaIconTemplate(faIcon: FontAwesomeIcons.signOutAlt)),
        ],
      ),
    );
  }

  buildDeleteAccountSheet(context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Уверены?",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Если вы удалите аккаунт, то все ваши данные сотрутся и их нельзя будет восстановить. Уверены, что хотите удалить аккаунт?",
                    style: TextStyle(
                        color: AppColors.black, fontSize: 18, height: 1.3),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                      child: const Text(
                        "Удалить аккаунт",
                        style: TextStyle(
                            color: AppColors.black,
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
        backgroundColor: AppColors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
        builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Выход",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Уверены, что хотите выйти из аккаунта? Чтобы пользоваться приложением вам придется войти снова",
                    style: TextStyle(
                        color: AppColors.black, fontSize: 18, height: 1.3),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ActionButton(
                      child: const Text(
                        "Выйти с аккаунта",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      onClick: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setBool("isLoggedIn", false);
                        
                        Navigator.of(context).pop();
                        Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    const OnboardingView()),
                            (route) => false);
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
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
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
      color: AppColors.primary,
    );
  }
}
