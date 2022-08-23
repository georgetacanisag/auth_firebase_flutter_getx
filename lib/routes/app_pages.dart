// ignore_for_file: constant_identifier_names

import 'package:auth_firebase_flutter_getx/modules/auth/bindings/auth_bindings.dart';
import 'package:auth_firebase_flutter_getx/modules/auth/screens/login_screen.dart';
import 'package:auth_firebase_flutter_getx/modules/home/screens/home_screen.dart';
import 'package:auth_firebase_flutter_getx/modules/home/screens/initial_screen.dart';
import 'package:auth_firebase_flutter_getx/routes/app_routes.dart';
import 'package:get/get.dart';

import 'package:get/route_manager.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.INITIAL,
      page: () => const InitialScreen(),
    ),
  ];
}
