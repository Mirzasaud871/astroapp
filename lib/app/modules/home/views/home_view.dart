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
          style: TextStyle(color: Colors.black,fontSize: 18),
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
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                margin: EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
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
                      aspectRatio: 2.5,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        homeController.currentindex.value = index;
                      },
                    ),
                  ),
                ),
              ),

              // SizedBox(
              //   width: double.infinity,
              //   height: 270,
              //   child: GridView.builder(
              //     itemCount: homeController.homeList.length,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 3,childAspectRatio: .9),
              //     itemBuilder: (BuildContext context, int index) {
              //       return InkWell(
              //         onTap: (){
              //           Get.toNamed(homeController.homeList[index].route);
              //         },
              //         child: Container(
              //             decoration: const BoxDecoration(
              //               color: Colors.white,
              //                 ),
              //             margin: const EdgeInsets.all(02.0),
              //             child: Stack(
              //               children: [
              //                 Padding(
              //                   padding: const EdgeInsets.only(top: 2.0),
              //                   child: Align(
              //                       alignment: Alignment.topCenter,
              //                       child: Image.asset(homeController.homeList[index].image,height: 80,)),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.only(bottom: 6.0,),
              //                   child: Align(
              //                     alignment: Alignment.bottomCenter,
              //                     child: Text(homeController.homeList[index].name,style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
              //                   ),
              //                 )
              //               ],
              //             )),
              //       );
              //     },
              //   ),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                InkWell(
                  onTap: (){
                    Get.toNamed("/kundliform");
                  },
                  child: Container(
                      margin: EdgeInsets.all(2.0),
                      height: 130,
                      width: 115,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Stack(
                               children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 2.0),
                                       child: Align(
                                           alignment: Alignment.topCenter,
                                           child: Image.asset("assets/images/icons/ic_kundli.png",height: 80)),
                                     ),
                                     Padding(
                                      padding: const EdgeInsets.only(bottom: 5.0,),
                                       child: Align(
                                         alignment: Alignment.bottomCenter,
                                         child: Text("Kunli",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                       ),
                                     )
                                   ],
                                 )),
                ),
                InkWell(
                  onTap: (){
                    Get.toNamed("/matching");
                  },
                  child: Container(
                      margin: EdgeInsets.all(2.0),
                      height: 130,
                      width: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset("assets/images/icons/ic_match.png",height: 80,color: Colors.orange,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0,),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Matching",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            ),
                          )
                        ],
                      )),
                ),
                InkWell(
                  onTap: (){
                    Get.toNamed("");
                  },
                  child: Container(
                    margin: EdgeInsets.all(2.0),
                      height: 130,
                      width: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset("assets/images/icons/ic_prediction.png",height: 80,color: Colors.orange,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0,),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("PDF\n Kundli",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            ),
                          )
                        ],
                      )),
                ),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.toNamed("/kundliform");
                    },
                    child: Container(
                        margin: EdgeInsets.all(2.0),
                        height: 130,
                        width: 115,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300)
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/ic_asc.png",height: 80,color: Colors.orange,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0,),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Jyotish Paramarsh",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              ),
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: (){
                      Get.toNamed("/kundliform");
                    },
                    child: Container(
                        margin: EdgeInsets.all(2.0),
                        height: 130,
                        width: 115,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300)
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/ic_dasa.png",height: 80,color: Colors.orange,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0,),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Shubh Muhrat",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              ),
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: (){
                      Get.toNamed("/horoscope");
                    },
                    child: Container(
                        margin: EdgeInsets.all(2.0),
                        height: 130,
                        width: 115,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300)
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/ic_celebrity.png",height: 80,color: Colors.orange,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0,),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Horoscope",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              ),
                            )
                          ],
                        )),
                  ),
                ],),
              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(
                  child: Center(
                    child:
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/panchang.jpg",height: 90,)),),
                ),
                SizedBox(width: 6,),
                SizedBox(
                  child: Center(
                    child:
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/choghadiya.png",height:90,)),),
                ),
              ],),

              SizedBox(height:15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.toNamed("/calendar");
                    },
                    child: Container(
                        margin: EdgeInsets.all(2.0),
                        height: 130,
                        width: 115,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300)
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset("assets/images/icons/calendar.png",height: 60,color:Colors.orange)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0,),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Calendar",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.all(2.0),
                      height: 130,
                      width: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset("assets/images/icons/vrat.png",height: 60,color:Colors.orange)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0,),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Vrat\n Tyohar",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            ),
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.all(2.0),
                      height: 130,
                      width: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
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
                              child: Text("Vrat\n Katha",style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,))
                            ),
                        ],
                      )),
                ],),

              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
