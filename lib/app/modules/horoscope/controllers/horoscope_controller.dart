import 'package:astroapp/app/modules/horoscope/model/horoscope_model.dart';
import 'package:get/get.dart';
class HoroscopeController extends GetxController {
  //TODO: Implement HoroscopeController

  final count = 0.obs;

  var horoscopeList = <HoroscopeList>[
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab8f5fd12.png", name: "मेष", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab9cd0830.png", name: "वृषभ", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab839f86a.png", name: "मिथुन", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab7cebea1.png", name: "कर्क", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab747719c.png", name: "सिंह", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab6d36f80.png", name: "Gemini", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab6648ffd.png", name: "Libra", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab6097c0e.png", name: "Pisces", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab568a542.png", name: "Sagittarius", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab4d75e6e.png", name: "Scorpio", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab46a62a3.png", name: "Taurus", route: ""),
    HoroscopeList(image: "assets/images/horoicons/2023-09-25-6511ab15befbc.png", name: "Virgo", route: ""),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
