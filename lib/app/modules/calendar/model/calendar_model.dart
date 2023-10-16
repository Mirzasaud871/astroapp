
import 'package:flutter/animation.dart';

class CalendarList{

  CalendarList({
   required this.title,
   required this.subtitle,
   required this.date,
   required this.color,
});

  dynamic title;
  dynamic subtitle;
  dynamic date;
  dynamic color;
}
class MyColor {
  MyColor({
    required this.color,
    required this.name,
  });

  final Color color;
  final String name;
}

