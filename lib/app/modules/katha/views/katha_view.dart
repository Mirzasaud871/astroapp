import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/katha_controller.dart';

class KathaView extends GetView<KathaController> {
  const KathaView({Key? key}) : super(key: key);
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
            'कथा',
            style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: Get.width * 2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBB52),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: Get.width * 0.13,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(color: Colors.black,width: 1.5)
                          ),
                          child: Center(
                            child: Text("कथा",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex:1,
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  height: Get.width * 0.13,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(6.0)
                                  ),
                                  child: Center(
                                    child: Text("साप्ताहिक व्रत कथा",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                                  ),
                                )
                            ),
                            Expanded(
                                flex:1,
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  height: Get.width * 0.13,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(6.0)
                                  ),
                                  child: Center(
                                    child: Text("साप्ताहिक व्रत कथा",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                                  ),
                                )
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
