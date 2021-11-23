import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nomad/layouts/main_layout.dart';
import 'package:nomad/onboarding/views/onboarding_view.dart';
import 'package:nomad/splash/views/splash_view.dart';
import "package:shared_preferences/shared_preferences.dart";

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
            future: isLoggedIn(),
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SplashView();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data ?? false) {
                  return const MainLayout();
                } else {
                  return const OnboardingView();
                }
              } else {
                return Container();
              }
            }));
  }

  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey("phoneNumber") && prefs.containsKey("password");
  }
}
