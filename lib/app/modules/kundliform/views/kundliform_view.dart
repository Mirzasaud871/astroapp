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
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        title: const Text(
          'कुण्डली',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 15.0),
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
                children: [
                  SizedBox(height: Get.width * 0.1,),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    height: Get.width * 1.7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFFFBB52),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Center(child:Text("जन्म पत्रिका",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "पूरा नाम",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.white, width: 2)),
                        width: double.infinity,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      
                      const Text(
                        "जन्म तारीख",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: () {
                          kundliformController.ChooseDate();
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.white, width: 2)),
                          child: Obx(() => Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 5.0),
                            child: Text(
                              DateFormat("dd-MM-yyyy")
                                  .format(
                                  kundliformController.selectedDate.value)
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "जन्म समय",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
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
                              border: Border.all(color: Colors.white, width: 2)),
                          child: Obx(() => Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 5.0),
                            child: Text(
                              "${kundliformController.selectedTime.value.hour}"
                                  ":${kundliformController.selectedTime.value.minute}",
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "जन्म स्थान",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.white, width: 2)),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 4.0, left: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  "India",
                                  style: TextStyle(fontSize: 15, letterSpacing: 1),
                                ),
                                Spacer(),
                                Icon(Icons.keyboard_arrow_down_outlined)
                              ],
                            ),
                          ),
                        ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 4.0, left: 5.0),
                          child: Text(
                            "Ujjain",
                            style: TextStyle(fontSize: 15, letterSpacing: 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: FloatingActionButton.extended(
                            elevation: 0,
                            backgroundColor: Colors.black,
                            onPressed: () {},
                            label: const Text(
                              "कुण्डली देखे",
                              style: TextStyle(fontSize: 16),
                            )),
                      )
                    ],),
                  ),
                ],
              ),
            )),
      )),
    );
  }
}
