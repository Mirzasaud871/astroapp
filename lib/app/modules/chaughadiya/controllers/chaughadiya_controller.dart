import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChaughadiyaController extends GetxController {
  //TODO: Implement ChaughadiyaController

  final count = 0.obs;
  var selectedDay = "01".obs;
  var selectedMonth = "01".obs;
  var selectedYear = "1991".obs;
  var selectedDate = DateTime.now().obs;

  ChooseDate()async{
    DateTime? datePicked = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(1995),
        lastDate: DateTime(2025),
        builder: (context , child) => Theme(
          child: child!,
          data: ThemeData(
              colorScheme: const ColorScheme.light(
                  onSurface: Colors.black,
                  surface: Colors.orange,
                  primary: Colors.orange
              )
          ),
        )
    );
    if(datePicked != null && datePicked != selectedDate.value){
      selectedDate.value = datePicked;
    }
  }
  void upDaySelected(var value){
    selectedDay.value = value;
  }

  final List dropdownListD = [
    "01","02","03","04","05","06","07","08","09","10",
    "11","12","13","14","15","16","17","18","19","20",
    "21","22","23","24","25","26","27","28","29","30","31"
  ];

  void upMonthSelected(var value){
    selectedMonth.value = value;
  }

  final List dropdownListM = [
    "01","02","03","04","05","06","07","08","09","10","11","12"
  ];

  void upYearSelected(var value){
    selectedYear.value = value;
  }

  final List dropdownListY = [
    "1991","1992","1993","1994","1995","19966","1997","1998",
    "1999","2000","2001","2002","2003","2004","2005","2006","2007",
    "2008","2009","2010","2011","2012","2013","2014","2015","2016",
    "2017","2018","2019","2020","2021","2022","2023","2024","2025",
    "2026","2027","2028","2029","2030",
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
