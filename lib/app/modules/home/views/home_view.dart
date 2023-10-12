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
        backgroundColor: Colors.white,
        title: const Text(
          'Astrotalk',
          style: TextStyle(color: Colors.black),
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
            Icons.g_translate,
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
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(homeController.currentindex.value);
                    },
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
                        aspectRatio: 5,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          homeController.currentindex.value = index;
                        },
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: double.infinity,
                height: 270,
                child: GridView.builder(
                  itemCount: homeController.homeList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,childAspectRatio: .9),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Get.toNamed(homeController.homeList[index].route);
                      },
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                              ),
                          margin: const EdgeInsets.all(02.0),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(homeController.homeList[index].image,height: 80,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6.0,),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(homeController.homeList[index].name,style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                ),
                              )
                            ],
                          )),
                    );
                  },
                ),
              ),

              SizedBox(
                child: Center(
                  child:
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/panchangg.jpg",height: 130,)),),
              ),
              SizedBox(height: 10,),
              SizedBox(
                child: Center(
                  child:
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/chaughadiya.jpg",height: 130,)),),
              ),

              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                height: 135,
                child: GridView.builder(
                  itemCount: homeController.homelistsecond.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,childAspectRatio: 0.9,),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Get.toNamed(homeController.homelistsecond[index].route);
                      },
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.all(02.0),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(homeController.homelistsecond[index].image,height: 55,color:Color(0xffFF6F00),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6.0,),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(homeController.homelistsecond[index].name,style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                ),
                              )
                            ],
                          )),
                    );
                  },
                ),
              ),

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
