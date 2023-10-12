import 'package:astroapp/app/modules/horoscope/model/horoscope_model.dart';
import 'package:get/get.dart';
class HoroscopeController extends GetxController {
  //TODO: Implement HoroscopeController

  final count = 0.obs;

  var horoscopeList = <HoroscopeList>[
    HoroscopeList(image: "assets/images/horoicons/aquarius.png", name: "Aquarius", route: ""),
    HoroscopeList(image: "assets/images/horoicons/aries.png", name: "Aries", route: ""),
    HoroscopeList(image: "assets/images/horoicons/cancer.png", name: "Cancer", route: ""),
    HoroscopeList(image: "assets/images/horoicons/capricorn.png", name: "Capricorn", route: ""),
    HoroscopeList(image: "assets/images/horoicons/leo.png", name: "Leo", route: ""),
    HoroscopeList(image: "assets/images/horoicons/gemini.png", name: "Gemini", route: ""),
    HoroscopeList(image: "assets/images/horoicons/libra.png", name: "Libra", route: ""),
    HoroscopeList(image: "assets/images/horoicons/pisces.png", name: "Pisces", route: ""),
    HoroscopeList(image: "assets/images/horoicons/sagittarius.png", name: "Sagittarius", route: ""),
    HoroscopeList(image: "assets/images/horoicons/scorpio.png", name: "Scorpio", route: ""),
    HoroscopeList(image: "assets/images/horoicons/taurus.png", name: "Taurus", route: ""),
    HoroscopeList(image: "assets/images/horoicons/virgo.png", name: "Virgo", route: ""),
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
