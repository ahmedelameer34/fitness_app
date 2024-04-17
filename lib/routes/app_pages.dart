// ignore_for_file: constant_identifier_names

import 'package:fittness_app/pages/about_view.dart';
import 'package:fittness_app/pages/login_view.dart';
import 'package:fittness_app/pages/register_view.dart';
import 'package:fittness_app/pages/welcome_view.dart';
import 'package:get/get.dart';

import '../pages/forget_password_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.welcome;

  static final routes = [
    GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: Routes.about,
      page: () => const AboutView(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.forgetPassword,
      page: () => const ForgetPasswordView(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterView(),
    ),
  ];
}
