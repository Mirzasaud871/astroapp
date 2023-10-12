import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KundliformController extends GetxController {
  //TODO: Implement KundliformController

  final formkey = GlobalKey<FormState>();
  final count = 0.obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;


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


  ChooseTime()async{
    TimeOfDay? timePicked = await showTimePicker(
        context: Get.context!,
        initialTime: selectedTime.value,
        builder: (context , child) => Theme(
          child: child!,
          data: ThemeData(
              colorScheme: const ColorScheme.light(
                  onSurface: Colors.black,
                  primary: Colors.orange
              )
          ),
        )
    );
    if(timePicked != null && timePicked != selectedDate.value){

      selectedTime.value = timePicked.replacing(hour: timePicked.hourOfPeriod);
      // _selectedTime = timePicked.replacing(hour: timePicked.hourOfPeriod);
    }
  }



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
