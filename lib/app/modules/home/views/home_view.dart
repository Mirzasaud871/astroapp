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
      drawer: const Drawer(
        backgroundColor: Colors.black,
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
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
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  margin: EdgeInsets.all(4.0),
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
                          padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                          height: Get.width * .36,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400)
                        ),
                        child: Stack(
                                   children: [
                                         Align(
                                             alignment: Alignment.topCenter,
                                             child: Image.asset("assets/images/icons/ic_kundli.png",height: 80)),
                                         Align(
                                           alignment: Alignment.bottomCenter,
                                           child: Text("जन्म कुंडली",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                         )
                                       ],
                                     )),
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
                          padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                          height: Get.width * .36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/ic_match.png",height: 80,color: Colors.orange,)),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("कुंडली मिलान",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              )
                            ],
                          )),
                    ),
                  ),
                  Expanded(
                  flex: 1,
                    child: InkWell(
                      onTap: (){
                        Get.toNamed("");
                      },
                      child: Container(
                        margin: EdgeInsets.all(2.0),
                          padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                          height: Get.width * .36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/ic_prediction.png",height: 80,color: Colors.orange,)),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("कुंडली PDF",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              )
                            ],
                          )),
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
                      child: Container(
                          margin: EdgeInsets.all(2.0),
                          padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                          height: Get.width * .36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/vrat.png",height: 60,color:Colors.orange)),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("अंक ज्योतिष",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(2.0),
                          padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                          height: Get.width * .36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/vrat.png",height: 60,color:Colors.orange)),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("टैरो कार्ड",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              )
                            ],
                          )),
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
                          Get.toNamed("/kundliform");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                            height: Get.width * .36,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400)
                            ),
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset("assets/images/icons/ic_asc.png",height: 80,color: Colors.orange,)),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("पंचांग",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/kundliform");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                            height: Get.width * .36,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400)
                            ),
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset("assets/images/icons/ic_dasa.png",height: 80,color: Colors.orange,)),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("चौघड़िया",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                )
                              ],
                            )),
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
                            padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                            height: Get.width * .36,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400)
                            ),
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset("assets/images/icons/ic_celebrity.png",height: 80,color: Colors.orange,)),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("राशिफल",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                )
                              ],
                            )),
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
                      child: Container(
                          margin: EdgeInsets.all(2.0),
                          padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                          height: Get.width * .36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/ic_gocharfal.png",height: 60,color:Colors.orange)),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("ज्योतिष परामर्श ",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(2.0),
                          padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                          height: Get.width * .36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/ic_gocharfal.png",height: 60,color:Colors.orange)),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("शुभ मूहर्त",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              )
                            ],
                          )),
                    ),
                  ],),

                //धार्मिक जानकारी
                SizedBox(height: Get.width * .04),
                Text("धार्मिक जानकारी",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Get.toNamed("/calendar");
                        },
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                            height: Get.width * .36,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400)
                            ),
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset("assets/images/icons/calendar.png",height: 60,color:Colors.orange)),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("हिन्दू कैलेंडर",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                            height: Get.width * .36,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400)
                            ),
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset("assets/images/icons/vrat.png",height: 60,color:Colors.orange)),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("व्रत त्यौहार",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                            margin: EdgeInsets.all(2.0),
                            height: Get.width * .36,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400)
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Image.asset("assets/images/icons/katha.png",height: 60,color: Colors.orange)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0,),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("व्रत कथा",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,))
                                  ),
                              ],
                            )),
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
