import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DrawerView extends GetView<DrawerController> {
  DrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DrawerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
