import 'package:get/get.dart';

import '../modules/calendar/bindings/calendar_binding.dart';
import '../modules/calendar/views/calendar_view.dart';
import '../modules/chaughadiya/bindings/chaughadiya_binding.dart';
import '../modules/chaughadiya/views/chaughadiya_view.dart';
import '../modules/drawer/bindings/drawer_binding.dart';
import '../modules/drawer/views/drawer_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/horoscope/bindings/horoscope_binding.dart';
import '../modules/horoscope/views/horoscope_view.dart';
import '../modules/jyotish_paramarsh/bindings/jyotish_paramarsh_binding.dart';
import '../modules/jyotish_paramarsh/views/jyotish_paramarsh_view.dart';
import '../modules/kundliform/bindings/kundliform_binding.dart';
import '../modules/kundliform/views/kundliform_view.dart';
import '../modules/matching/bindings/matching_binding.dart';
import '../modules/matching/views/matching_view.dart';
import '../modules/panchang/bindings/panchang_binding.dart';
import '../modules/panchang/views/panchang_view.dart';
import '../modules/shubh_muhurat/bindings/shubh_muhurat_binding.dart';
import '../modules/shubh_muhurat/views/shubh_muhurat_view.dart';

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
      page: () => MatchingView(),
      binding: MatchingBinding(),
    ),
    GetPage(
      name: _Paths.HOROSCOPE,
      page: () => HoroscopeView(),
      binding: HoroscopeBinding(),
    ),
    GetPage(
      name: _Paths.CALENDAR,
      page: () => CalendarView(),
      binding: CalendarBinding(),
    ),
    GetPage(
      name: _Paths.PANCHANG,
      page: () => PanchangView(),
      binding: PanchangBinding(),
    ),
    GetPage(
      name: _Paths.CHAUGHADIYA,
      page: () => ChaughadiyaView(),
      binding: ChaughadiyaBinding(),
    ),
    GetPage(
      name: _Paths.JYOTISH_PARAMARSH,
      page: () => JyotishParamarshView(),
      binding: JyotishParamarshBinding(),
    ),
    GetPage(
      name: _Paths.SHUBH_MUHURAT,
      page: () => ShubhMuhuratView(),
      binding: ShubhMuhuratBinding(),
    ),
  ];
}
