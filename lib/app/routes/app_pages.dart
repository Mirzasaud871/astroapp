import 'package:get/get.dart';

import '../modules/drawer/bindings/drawer_binding.dart';
import '../modules/drawer/views/drawer_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kundliform/bindings/kundliform_binding.dart';
import '../modules/kundliform/views/kundliform_view.dart';
import '../modules/matching/bindings/matching_binding.dart';
import '../modules/matching/views/matching_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DRAWER,
      page: () => DrawerView(),
      binding: DrawerBinding(),
    ),
    GetPage(
      name: _Paths.KUNDLIFORM,
      page: () => KundliformView(),
      binding: KundliformBinding(),
    ),
    GetPage(
      name: _Paths.MATCHING,
      page: () => const MatchingView(),
      binding: MatchingBinding(),
    ),
  ];
}