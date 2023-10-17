import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/chaughadiya_controller.dart';

class ChaughadiyaView extends GetView<ChaughadiyaController> {
  ChaughadiyaView({Key? key}) : super(key: key);
  ChaughadiyaController chaughadiyaController =
      Get.put(ChaughadiyaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            'Chaughadiya',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 18,
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(children: [
                      SizedBox(
                        height: Get.width * 0.04,
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: Get.width * 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFFFFBB52),
                          border: Border.all(
                              color: Colors.grey.shade400, width: 2.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 15.0),
                              height: Get.width * 0.13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.black),
                              child: Center(
                                  child: Text(
                                "चोघड़िया",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Text(
                              " मंगलवार, 17 अक्तुबर , 2023",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: Get.width * 0.08,
                            ),
                            InkWell(
                              onTap: () {
                                chaughadiyaController.ChooseDate();
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                height: Get.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: Colors.grey.shade400,
                                        width: 1.5)),
                                child: Row(
                                  children: [
                                    Obx(() => Padding(
                                          padding: const EdgeInsets.only(
                                              top: 4.0, left: 5.0),
                                          child: Text(
                                            DateFormat("dd-MM-yyyy")
                                                .format(chaughadiyaController
                                                    .selectedDate.value)
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.width * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                chaughadiyaController.ChooseDate();
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                height: Get.width * 0.15,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: Colors.grey.shade400,
                                        width: 1.5)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 5.0),
                                      child: Text(
                                        "India",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.keyboard_arrow_down_rounded)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.width * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                chaughadiyaController.ChooseDate();
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                height: Get.width * 0.15,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: Colors.grey.shade400,
                                        width: 1.5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 5.0),
                                  child: Text(
                                    "Ujjain madhya pradesh,india",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.width * 0.04,
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: Get.width * 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFFFFBB52),
                          border: Border.all(
                              color: Colors.grey.shade400, width: 2.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 15.0),
                              height: Get.width * 0.13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.black),
                              child: Center(
                                  child: Text(
                                "दिन का चौघड़िया",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.width * 0.04,
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: Get.width * 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFFFFBB52),
                          border: Border.all(
                              color: Colors.grey.shade400, width: 2.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 15.0),
                              height: Get.width * 0.13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.black),
                              child: Center(
                                  child: Text(
                                "रात का चौघड़िया",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ])))));
  }
}
