import 'package:get/get.dart';

import '../controllers/katha_controller.dart';

class KathaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KathaController>(
      () => KathaController(),
    );
  }
}
