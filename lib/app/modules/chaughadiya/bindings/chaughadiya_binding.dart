import 'package:get/get.dart';

import '../controllers/chaughadiya_controller.dart';

class ChaughadiyaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChaughadiyaController>(
      () => ChaughadiyaController(),
    );
  }
}
