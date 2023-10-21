import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(
      //   backgroundColor: Colors.black,
      // ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color:Colors.black),
        backgroundColor: Colors.amber ,
        title: const Text(
          'AstroRobo',
          style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.account_balance_wallet,
            size: 30,
          ),

          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.width * 0.03,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  margin: EdgeInsets.all(2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9.0),
                    child: CarouselSlider(
                      items: homeController.imagelist
                          .map(
                            (item) => Image.asset(
                              item['imagePath'],
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: homeController.carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2.8,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          homeController.currentindex.value = index;
                        },
                      ),
                    ),
                  ),
                ),

                //वैदिक ज्योतिष
                SizedBox(height: Get.width * .04),
                Text("वैदिक ज्योतिष ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        Get.toNamed("/kundliform");
                      },
                      child: Container(
                          margin: EdgeInsets.all(2.0),
                          height: Get.width * .26,
                        child: Center(child: Image.asset("assets/images/icons/22.jpg"))),
                    ),
                  ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/matching");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/23.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/24.jpg"))),
                      ),
                    ),
                ],),

                //अंक व टैरो ज्योतिष
                SizedBox(height: Get.width * .04),
                Text("अंक व टैरो ज्योतिष",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/4.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/5.jpg"))),
                      ),
                    ),
                  ],),

                //दैनिक जानकारी
                SizedBox(height: Get.width * .04),
                Text("दैनिक जानकारी",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/panchang");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/26.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/chaughadiya");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/27.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/horoscope");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/28.jpg"))),
                      ),
                    ),
                  ],),

                //सशुल्क जानकारी
                SizedBox(height: Get.width * .04),
                Text("सशुल्क जानकारी",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/jyotish-paramarsh");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child:Image.asset("assets/images/icons/9.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/shubh-muhurat");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/10.jpg"))),
                      ),
                    ),
                  ],),

                //धार्मिक जानकारी
                SizedBox(height: Get.width * .04),
                Text("धार्मिक जानकारी",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/11.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/12.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .26,
                            child: Center(child: Image.asset("assets/images/icons/13.jpg"))),
                      ),
                    ),
                  ],),

                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
