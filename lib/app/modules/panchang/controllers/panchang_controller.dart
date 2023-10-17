import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanchangController extends GetxController {
  //TODO: Implement PanchangController

  final count = 0.obs;
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
