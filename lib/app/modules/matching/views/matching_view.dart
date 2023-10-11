import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/matching_controller.dart';

class MatchingView extends GetView<MatchingController> {
  MatchingView({Key? key}) : super(key: key);
  MatchingController matchingController = Get.put(MatchingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: (){
          Get.toNamed("/home");
        },
        child: Container(
          margin: EdgeInsets.all(10.0),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Center(child: Text("Show Kundli",style: TextStyle(fontSize: 16, color: Colors.white),)),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Matching',
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
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
                key: matchingController.formkey,
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
                        "Boy's Name",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
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
                        "Date of Birth",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      InkWell(
                        onTap: () {
                          matchingController.ChooseDate();
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
                                  matchingController.selectedDate.value)
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          matchingController.ChooseTime();
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
                              "${matchingController.selectedTime.value.hour}"
                                  ":${matchingController.selectedTime.value.minute}",
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
                          fontWeight: FontWeight.bold,
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
                                  style: TextStyle(fontSize: 15, letterSpacing: 1,fontWeight: FontWeight.bold,),
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

                      //Giiiiiiiiiiiiiiiirrrrrrrrrrrrllllllllllllllllllllsssssssssssss
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Girl's Name",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
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
                        "Date of Birth",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      InkWell(
                        onTap: () {
                          matchingController.ChooseDate();
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
                                  matchingController.selectedDate.value)
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          matchingController.ChooseTime();
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
                              "${matchingController.selectedTime.value.hour}"
                                  ":${matchingController.selectedTime.value.minute}",
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
                          fontWeight: FontWeight.bold,
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
                                  style: TextStyle(fontSize: 15, letterSpacing: 1,fontWeight: FontWeight.bold,),
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
                        height: 80,
                      ),

                      // Container(
                      //   height: 50,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //       color: Colors.orange,
                      //       borderRadius: BorderRadius.circular(8.0)),
                      //   child: FloatingActionButton.extended(
                      //       elevation: 0,
                      //       backgroundColor: Colors.orange,
                      //       onPressed: () {},
                      //       label: Text(
                      //         "Show Kundli",
                      //         style: TextStyle(fontSize: 16),
                      //       )),
                      // )
                    ],
                  ),
                )),
          ),
      ),
    );
  }
}
