import 'package:get/get.dart';

import '../controllers/jyotish_paramarsh_controller.dart';

class JyotishParamarshBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JyotishParamarshController>(
      () => JyotishParamarshController(),
    );
  }
}
