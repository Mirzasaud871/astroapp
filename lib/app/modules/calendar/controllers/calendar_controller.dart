import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../model/calendar_model.dart';

class CalendarController extends GetxController {
  //TODO: Implement CalendarController

  final count = 0.obs;

  var calendarlist = <CalendarList>[
    CalendarList(title: "Pausha Putrada Ekadashi", subtitle: "Mon", date: "02",color:'cyan'),
    CalendarList(title: "Sankashti Chaturthi", subtitle: "Tue", date: "15",color: ""),
    CalendarList(title: "Pausha Putrada Ekadashi", subtitle: "Wedn", date: "05",color: ""),
    CalendarList(title: "Pausha Putrada Ekadashi", subtitle: "Mon", date: "02",color: ""),
    CalendarList(title: "Sankashti Chaturthi", subtitle: "Tue", date: "15",color: ""),
    CalendarList(title: "Pausha Putrada Ekadashi", subtitle: "Wedn", date: "05",color: ""),
    CalendarList(title: "Pausha Putrada Ekadashi", subtitle: "Mon", date: "02",color: ""),
    CalendarList(title: "Sankashti Chaturthi", subtitle: "Tue", date: "15",color: ""),
    CalendarList(title: "Pausha Putrada Ekadashi", subtitle: "Wedn", date: "05",color: ""),
  ].obs;

  final List<MyColor> myBgColors = <MyColor>[
     MyColor(color: Color(0xFFFF9933), name: "Orang"),
     MyColor(color: Color(0xFFFFCC66), name: "name"),
     MyColor(color: Color(0xFFFF9933), name: "name"),
     MyColor(color: Color(0xFFFFCC66), name: "name"),
     MyColor(color: Color(0xFFFF9933), name: "name"),
     MyColor(color: Color(0xFFFFCC66), name: "name"),
     MyColor(color: Color(0xFFFF9933), name: "Orang"),
     MyColor(color: Color(0xFFFFCC66), name: "name"),
     MyColor(color: Color(0xFFFF9933), name: "name"),
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
