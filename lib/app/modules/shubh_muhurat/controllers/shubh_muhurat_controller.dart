import 'package:get/get.dart';

import '../model/shubhmuhurat_model.dart';

class ShubhMuhuratController extends GetxController {
  //TODO: Implement ShubhMuhuratController

  final count = 0.obs;
  var shubhmuhuratList = <ShubhMuhuratList>[
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/pexels-jay-pizzle-3752169.jpg", name: "वाहन खरीदी मुहूर्त", rupees: "₹500"),
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/2023-09-25-6511ac9a268c2.png", name: "विवाह मुहूर्त", rupees: "₹500"),
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/2023-09-25-6511ac12b03eb.png", name: "गृह प्रवेश मुहूर्त", rupees: "₹500"),
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/2023-09-25-6511ac739e14c.png", name: "गोदभराई मुहूर्त", rupees: "₹500"),
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/2023-09-25-6511ac9176ff7.png", name: "मुंडन मुहूर्त", rupees: "₹500"),
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/2023-09-25-6511ac8830947.png", name: "नामकरण मुहूर्त", rupees: "₹500"),
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/2023-09-25-6511acb5e6bb9.png", name: "व्यापार शुभारम्भ मुहूर्त", rupees: "₹500"),
    ShubhMuhuratList(image: "assets/images/shubhmuhuratimage/2023-10-02-651aeb50bd5e4.png", name: "भूमि पूजन", rupees: "₹500"),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
