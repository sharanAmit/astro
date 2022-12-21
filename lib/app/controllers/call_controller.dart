import 'package:astro/app/controllers/home_controller.dart';
import 'package:astro/app/models/astrologer_model.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class CallController extends GetxController {
  final count = 0.obs;
  late RxInt selectedIndex = 0.obs;

  CarouselController carouselController = CarouselController();
  RxInt sliderDot = 0.obs;
  final allAstrologer = <Astrologer>[].obs;
  final filteredAstro = <Astrologer>[].obs;
  @override
  void onInit() {
    allAstrologer.value = Get.find<HomeController>().astrologers;
    filteredAstro.value = allAstrologer;
    super.onInit();
  }

  setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  filter(int id) {
    List<Astrologer> temp = [];
    for (int i = 0; i < allAstrologer.length; i++) {
      if (allAstrologer[i].categoryId == id) {
        temp.add(allAstrologer[i]);
      }
    }
    filteredAstro.value = temp;
  }
}
