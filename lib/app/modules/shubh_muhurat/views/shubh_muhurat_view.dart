import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shubh_muhurat_controller.dart';

class ShubhMuhuratView extends GetView<ShubhMuhuratController> {
  ShubhMuhuratView({Key? key}) : super(key: key);
  ShubhMuhuratController shubhMuhuratController =
      Get.put(ShubhMuhuratController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            'शुभ मुहूर्त',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Get.width * 0.03),
                Container(
                    margin: EdgeInsets.all(10.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xFFFFFBB52), width: 1.5),
                        borderRadius: BorderRadius.circular(10.0)),
                    width: 350,
                    child: Text(
                      "शुभ मुहूर्त",
                      textAlign: TextAlign.center,
                    )),
                Container(
                    padding: EdgeInsets.all(4.0),
                    height: Get.width * 1.76,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount:
                          shubhMuhuratController.shubhmuhuratList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                          childAspectRatio: 1.1),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                  color: Colors.grey.shade500, width: 2),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    shubhMuhuratController
                                        .shubhmuhuratList[index].image,
                                  ),
                                ),
                                SizedBox(
                                  height: Get.width * 0.02,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    shubhMuhuratController
                                        .shubhmuhuratList[index].name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        shubhMuhuratController
                                            .shubhmuhuratList[index].rupees,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "₹1800",
                                        style: TextStyle(
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                      },
                    )),
                SizedBox(
                  height: Get.width * 0.06,
                )
              ],
            ),
          ),
        ));
  }
}
