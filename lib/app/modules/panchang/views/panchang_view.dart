import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/panchang_controller.dart';

class PanchangView extends GetView<PanchangController> {
  PanchangView({Key? key}) : super(key: key);
  PanchangController panchangController = Get.put(PanchangController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            'Panchang',
            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
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
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: Get.width * 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFFFFBB52),
                    border: Border.all(color: Colors.grey.shade400,width: 2.0),
                  ),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25.0,horizontal: 15.0),
                      height: Get.width * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.black
                      ),
                      child: Center(child: Text("पंचांग",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),

                    Text(" मंगलवार, 17 अक्तुबर , 2023",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                    SizedBox(height: Get.width * 0.08,),
                    InkWell(
                      onTap: (){
                        panchangController.ChooseDate();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        height: Get.width * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey.shade400,width: 1.5)
                        ),
                        child: Row(
                          children: [
                            Obx(() => Padding(
                              padding: const EdgeInsets.only(top: 4.0, left: 5.0),
                              child: Text(
                                DateFormat("dd-MM-yyyy")
                                    .format(
                                    panchangController.selectedDate.value)
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
                    SizedBox(height: Get.width * 0.02,),
                    InkWell(
                      onTap: (){
                        panchangController.ChooseDate();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        height: Get.width * 0.15,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.grey.shade400,width: 1.5)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, left: 5.0),
                              child: Text("India",style: TextStyle(fontSize: 15),),
                            ),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.width * 0.02,),
                    InkWell(
                      onTap: (){
                        panchangController.ChooseDate();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        height: Get.width * 0.15,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.grey.shade400,width: 1.5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 5.0),
                          child: Text("Ujjain madhya pradesh,india",style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),

                    SizedBox(height: Get.width * 0.04,),
                    TabBar(
                      dividerColor: Colors.red,
                        labelColor: Colors.amber, //<-- selected text color
                        unselectedLabelColor: Colors.white,
                        indicatorColor: Color(0xFFFFBB52),
                        tabs: [
                          Tab(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              height: Get.width * 0.2,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(6.0)
                              ),
                              child: Center(child: Text("पंचांग",)),
                            )
                          ),
                          Tab(
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                height: Get.width * 0.2,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(6.0)
                                ),
                                child: Center(child: Text("ग्रहों")),//की स्थिति
                              )
                          ),
                          Tab(
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                height: Get.width * 0.2,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(6.0)
                                ),
                                child: Center(child: Text("होरा")),
                              )
                          )
                        ]),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                        child: TabBarView(
                            children: [
                              //tab 1111
                              Column(
                                children: [
                                  SizedBox(height: Get.width * 0.02,),
                                  Container(
                                    padding: EdgeInsets.all(10.0),
                                    height: Get.width * 0.3,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF800000),
                                      borderRadius: BorderRadius.circular(8.0)
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("अश्विन",style: TextStyle(color: Colors.white,fontSize: 20),),
                                              Text("शुक्ल तृतीया",style: TextStyle(color: Colors.amber,fontSize: 14),),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("ऋतु-शरद",style: TextStyle(color: Colors.white,fontSize: 14),),
                                              Text("अयन-दक्षिणायन",style: TextStyle(color: Colors.amber,fontSize: 14),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),


                              //Tabs 222
                              Container(
                                padding: EdgeInsets.all(10.0),
                                height: Get.width * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Text("2nd Tab",style: TextStyle(color: Colors.black,fontSize: 18),),
                              ),

                              //tabs 333
                              Container(
                                padding: EdgeInsets.all(10.0),
                                height: Get.width * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Text("3rd Tab",style: TextStyle(color: Colors.black),),
                              )
                            ]
                        ),
                      ),
                    )

                  ],),
                )
              ],),
            ),
          ),
        )
      ),
    );
  }
}
