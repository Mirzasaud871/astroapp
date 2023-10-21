import 'package:astroapp/app/modules/jyotish_paramarsh/model/jyotishparamarsh_model.dart';
import 'package:get/get.dart';

class JyotishParamarshController extends GetxController {
  //TODO: Implement JyotishParamarshController

  final count = 0.obs;

  var jotishparamarshlist = <JyotishPList>[
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-28-651510bdd5183.png", name: "विवाह योग", rupees: "₹500"),
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-25-6511ac38bb457.png", name: "खेल में भविष्य योग", rupees: "₹500"),
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-25-6511ad2b04127.png", name: "क़ानूनी मामला उपचार", rupees: "₹500"),
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-25-6511ad71acbc5.png", name: "शिक्षा योग", rupees: "₹500"),
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-25-6511ad1672591.png", name: "व्यवसाय / पेशा रिपोर्ट", rupees: "₹500"),
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-25-6511ac2d5d145.png", name: "संतान योग", rupees: "₹500"),
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-25-6511ac38bb457.png", name: "खेल में भविष्य योग", rupees: "₹500"),
    JyotishPList(image: "assets/images/Jyotishparaimage/2023-09-25-6511ad2b04127.png", name: "क़ानूनी मामला उपचार", rupees: "₹500"),
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
