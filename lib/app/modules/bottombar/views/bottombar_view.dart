import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  const BottombarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottombarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BottombarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
