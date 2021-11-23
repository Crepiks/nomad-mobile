import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nomad/auth/views/components/login_page.dart';
import 'package:nomad/auth/views/components/register_page.dart';
import 'package:nomad/common/components/common_back_button.dart';
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/layouts/safe_area_layout.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  int activePageIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
        backgroundColor: AppColors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 60),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CommonBackButton(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setActivePageIndex(index);
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    LoginPage(),
                    RegisterPage(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: _buildAuthTabs(),
              )
            ]));
  }

  void setActivePageIndex(index) {
    setState(() {
      activePageIndex = index;
    });
  }

  void navigatePage(index) {
    setState(() {
      activePageIndex = index;
    });

    _controller.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.ease);
  }

  Widget _buildAuthTabs() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.background, borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: _buildAuthTab(
                text: "Вход",
                active: activePageIndex == 0,
                onClick: () {
                  navigatePage(0);
                }),
          ),
          Expanded(
            flex: 1,
            child: _buildAuthTab(
                text: "Регистрация",
                active: activePageIndex == 1,
                onClick: () {
                  navigatePage(1);
                }),
          )
        ],
      ),
    );
  }

  Widget _buildAuthTab(
      {required String text, required bool active, required Function onClick}) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: active
                ? AppColors.primary.withOpacity(0.6)
                : AppColors.background,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: AppColors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
