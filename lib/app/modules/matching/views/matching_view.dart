import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/matching_controller.dart';

class MatchingView extends GetView<MatchingController> {
  const MatchingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Matching',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.history,
              color: Colors.black,
              size: 35,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text(
          'MatchingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
