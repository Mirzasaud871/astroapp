import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/kundliform_controller.dart';
import 'package:intl/intl.dart';

class KundliformView extends GetView<KundliformController> {
  KundliformView({Key? key}) : super(key: key);
  KundliformController kundliformController = Get.put(KundliformController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: const Text(
          'Astrologer Kundli',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.history,
              color: Colors.black,
              size: 35,
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
            key: kundliformController.formkey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.orange, width: 2)),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 2),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                8.0,
                              ),
                              bottomLeft: Radius.circular(8.0)),
                        ),
                        child: Center(
                            child: Text(
                          "Male",
                          style: TextStyle(fontSize: 15),
                        )),
                      ),
                      Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(
                                  8.0,
                                ),
                                topRight: Radius.circular(8.0)),
                            color: Colors.orange),
                        child: Center(
                            child: Text(
                          "Female",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Date of Birth",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  InkWell(
                    onTap: () {
                      kundliformController.ChooseDate();
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.orange, width: 2)),
                      child: Obx(() => Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 5.0),
                            child: Text(
                              DateFormat("dd-MM-yyyy")
                                  .format(
                                      kundliformController.selectedDate.value)
                                  .toString(),
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Time of Birth",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      kundliformController.ChooseTime();
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.orange, width: 2)),
                      child: Obx(() => Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 5.0),
                            child: Text(
                              "${kundliformController.selectedTime.value.hour}"
                              ":${kundliformController.selectedTime.value.minute}",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Place of Birth",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.orange, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0, left: 5.0),
                      child: Text(
                        "Ujjain",
                        style: TextStyle(fontSize: 15, letterSpacing: 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.orange, width: 2)),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 4.0, left: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " Setting",
                              style: TextStyle(fontSize: 15, letterSpacing: 1),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.arrow_forward_ios_outlined),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: FloatingActionButton.extended(
                        elevation: 0,
                        backgroundColor: Colors.orange,
                        onPressed: () {},
                        label: Text(
                          "Show Kundli",
                          style: TextStyle(fontSize: 16),
                        )),
                  )
                ],
              ),
            )),
      )),
    );
  }
}