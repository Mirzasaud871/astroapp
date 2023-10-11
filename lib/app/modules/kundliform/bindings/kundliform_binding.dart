import 'package:get/get.dart';

import '../controllers/kundliform_controller.dart';

class KundliformBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KundliformController>(
      () => KundliformController(),
    );
  }
}
