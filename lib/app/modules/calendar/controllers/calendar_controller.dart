import 'package:get/get.dart';

import '../model/calendar_model.dart';

class CalendarController extends GetxController {
  //TODO: Implement CalendarController

  final count = 0.obs;

  var calendarlist = <CalendarList>[
    CalendarList(title: "Pausha Putrada\n Ekadashi", subtitle: "Monday", date: "02 MON"),
    CalendarList(title: "Pausha Putrada\n Ekadashi", subtitle: "Monday", date: "02 MON"),
    CalendarList(title: "Pausha Putrada\n Ekadashi", subtitle: "Monday", date: "02 MON"),
  ].obs;
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
