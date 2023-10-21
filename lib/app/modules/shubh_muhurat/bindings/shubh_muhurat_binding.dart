import 'package:get/get.dart';

import '../controllers/shubh_muhurat_controller.dart';

class ShubhMuhuratBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShubhMuhuratController>(
      () => ShubhMuhuratController(),
    );
  }
}
