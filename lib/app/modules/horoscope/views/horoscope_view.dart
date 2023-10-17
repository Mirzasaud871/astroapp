import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/horoscope_controller.dart';

class HoroscopeView extends GetView<HoroscopeController> {
  HoroscopeView({Key? key}) : super(key: key);
  HoroscopeController horoscopeController = Get.put(HoroscopeController());
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
            'Horoscope',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height:20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 650,
                  child: GridView.builder(
                    itemCount: horoscopeController.horoscopeList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 0.8),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(
                              horoscopeController.horoscopeList[index].route);
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange,width: 1),
                                  borderRadius: BorderRadius.circular(06.0)
                                ),
                                margin: const EdgeInsets.all(02.0),
                                child: Image.asset(
                                  horoscopeController.horoscopeList[index].image,color: Colors.orange,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 6.0,
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  horoscopeController.horoscopeList[index].name,
                                  style: const TextStyle(fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
