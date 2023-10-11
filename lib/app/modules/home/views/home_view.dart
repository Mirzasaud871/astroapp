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
        actions: [
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

              Container(
                width: double.infinity,
                height: 600,
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
                          decoration: BoxDecoration(
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
                                  child: Text(homeController.homeList[index].name,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                ),
                              )
                            ],
                          )),
                    );
                  },
                ),
              ),

              // SizedBox(
              //     child: GridView.builder(
              //   itemCount: homeController.imageGrid.length,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 4.0,
              //       mainAxisSpacing: 4.0),
              //   itemBuilder: (BuildContext context, int index) {
              //     return Image.network(homeController.imageGrid[index]);
              //   },
              // )),

              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
