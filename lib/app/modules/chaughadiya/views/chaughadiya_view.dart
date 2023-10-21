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
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          title: const Text(
            'चौघड़िया',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
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
        body: DefaultTabController(
          length: 2,
          child: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(children: [
                        SizedBox(
                          height: Get.width * 0.04,
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: Get.width * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFFFFBB52),
                            border: Border.all(
                                color: Colors.black, width: 2.0),
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
                                  "चौघड़िया",
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
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                child: Row(
                                  children: [
                                    Obx( () => Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 1.0),
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0),
                                            color: Colors.white
                                        ),
                                        child: DropdownButton(
                                          menuMaxHeight: 300.0,
                                          borderRadius: BorderRadius.circular(10.0),
                                          underline:SizedBox(),
                                          isExpanded:true,
                                          onChanged: (newValue) {
                                            chaughadiyaController.upDaySelected(newValue);
                                          },
                                          value: chaughadiyaController.selectedDay.value,
                                          items: chaughadiyaController.dropdownListD.map((selectedType) {
                                            return DropdownMenuItem(
                                              child: new Text(
                                                selectedType,
                                              ),
                                              value: selectedType,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    )
                                    ),
                                    SizedBox(width: 6,),
                                    Obx( () => Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 1.0),
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8.0)
                                        ),
                                        child: DropdownButton(
                                          menuMaxHeight: 300.0,
                                          borderRadius: BorderRadius.circular(10.0),
                                          underline:SizedBox(),
                                          isExpanded:true,
                                          onChanged: (newValue) {
                                            chaughadiyaController.upMonthSelected(newValue);
                                          },
                                          value: chaughadiyaController.selectedMonth.value,
                                          items: chaughadiyaController.dropdownListM.map((selectedType) {
                                            return DropdownMenuItem(
                                              child: new Text(
                                                selectedType,
                                              ),
                                              value: selectedType,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    )
                                    ),
                                    SizedBox(width: 6,),
                                    Obx( () => Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 1.0),
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8.0)
                                        ),
                                        child: DropdownButton(
                                          menuMaxHeight: 300.0,
                                          borderRadius: BorderRadius.circular(10.0),
                                          underline:SizedBox(),
                                          isExpanded:true,
                                          onChanged: (newValue) {
                                            chaughadiyaController.upYearSelected(newValue);
                                          },
                                          value: chaughadiyaController.selectedYear.value,
                                          items: chaughadiyaController.dropdownListY.map((selectedType) {
                                            return DropdownMenuItem(
                                              child: new Text(
                                                selectedType,
                                              ),
                                              value: selectedType,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    )
                                    ),
                                  ],
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
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 15.0),
                                  height: Get.width * 0.14,
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
                                            top: 5.0, left: 5.0),
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
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 15.0),
                                  height: Get.width * 0.14,
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
                          height: Get.width * 1.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFFFFBB52),
                            border: Border.all(
                                color: Colors.black, width: 2.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.width * 0.04,
                              ),
                              TabBar(
                                  dividerColor: Colors.red,
                                  labelColor:
                                      Colors.amber, //<-- selected text color
                                  unselectedLabelColor: Colors.white,
                                  indicatorColor: Color(0xFFFFBB52),
                                  tabs: [
                                    Tab(
                                        child: Container(
                                          height: Get.width * 0.2,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(6.0)),
                                          child: Center(
                                              child: Text(
                                            ""
                                            "दिन का चौघड़िया",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        )),
                                    Tab(
                                        child: Container(
                                      height: Get.width * 0.2,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(6.0)),
                                      child: Center(
                                          child: Text(
                                        ""
                                        "रात का चौघड़िया",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    )),
                                  ]),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 15.0),
                                  child: TabBarView(children: [

                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      height: Get.width * 0.2,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Text(
                                        "दिन का चौघड़िया",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ),

                                    //Tabs 222
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      height: Get.width * 0.2,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Text(
                                        "रात का चौघड़िया",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ])))),
        ));
  }
}
