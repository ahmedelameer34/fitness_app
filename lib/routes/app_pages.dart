// ignore_for_file: constant_identifier_names

import 'package:fittness_app/pages/welcome_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.welcome;

  static final routes = [
    GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
    ),
    // GetPage(
    //   name: Routes.ABOUT,
    //   page: () => const AboutView(),
    // ),
    // GetPage(
    //   name: Routes.LOGIN,
    //   page: () => const LoginView(),
    // ),
  ];
}
