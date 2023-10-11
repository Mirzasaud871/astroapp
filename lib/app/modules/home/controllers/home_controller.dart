import 'dart:core';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

import '../model/home_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  List imagelist = [
    {"id" : 1 , "imagePath" : "assets/images/web-bn-en.jpg"},
    {"id" : 2 , "imagePath" : "assets/images/top-followed-astrologer-en.jpg"},
    {"id" : 3 , "imagePath" : "assets/images/web-boost1-en.jpg"},
    {"id" : 4 , "imagePath" : "assets/images/web-bk1-en.jpg"},
  ];
  final CarouselController carouselController = CarouselController();
  var currentindex = 0.obs;

  var homeList = <HomeList>[
    HomeList(image: "assets/images/icons/ic_kundli.png", name: "Kundli", route: "/kundliform"),
    HomeList(image: "assets/images/icons/ic_match.png", name: "Matching", route: "/matching"),
    HomeList(image: "assets/images/icons/ic_celebrity.png", name: "Horoscope", route: "route"),
    HomeList(image: "assets/images/icons/ic_prediction.png", name: "Life Report", route: "route"),
    HomeList(image: "assets/images/icons/ic_asc.png", name: "Ascendant Calculator", route: "route"),
    HomeList(image: "assets/images/icons/ic_baby.png", name: "Baby Name Suggestion", route: "route"),
    HomeList(image: "assets/images/icons/ic_chinese.png", name: "Chinese Astrology", route: "route"),
    HomeList(image: "assets/images/icons/ic_clock.png", name: "Today's Rahukaal", route: "route"),
    HomeList(image: "assets/images/icons/ic_dasa.png", name: "Dasha paal", route: "route"),
    HomeList(image: "assets/images/icons/ic_dollar.png", name: "Paid Service", route: "route"),
    HomeList(image: "assets/images/icons/ic_gemstones.png", name: "Gamestone Report", route: "route"),
    HomeList(image: "assets/images/icons/ic_gocharfal.png", name: "Gochar paal", route: "route"),
    HomeList(image: "assets/images/icons/ic_heart.png", name: "Love Horoscope", route: "route"),
    HomeList(image: "assets/images/icons/ic_kalsarp.png", name: "Kaalsarp Dosha", route: "route"),
    HomeList(image: "assets/images/icons/ic_lalkitab.png", name: "Laal Kitab Horoscope", route: "route"),
    HomeList(image: "assets/images/icons/ic_mangal.png", name: "Mangal Dosha", route: "route"),
    HomeList(image: "assets/images/icons/ic_occult.png", name: "Occult Directory", route: "route"),
    HomeList(image: "assets/images/icons/ic_saturn.png", name: "Sade sati Report", route: "route"),
    HomeList(image: "assets/images/icons/ic_tv.png", name: "Astrology\n TV", route: "route"),
    HomeList(image: "assets/images/icons/ic_varshfal.png", name: "Year\n Analysis", route: "route"),
  ].obs;

  final count = 0.obs;
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
