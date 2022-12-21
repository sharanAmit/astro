import 'package:astro/app/models/astrologer_model.dart';
import 'package:astro/app/models/banner_model.dart';
import 'package:astro/app/models/user_model.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CarouselController carouselController = CarouselController();
  RxList<BannerModel> banners = List<BannerModel>.empty().obs;
  RxList<Astrologer> astrologers = List<Astrologer>.empty().obs;
  RxList<User> user = List<User>.empty().obs;
  @override
  void onInit() {
    super.onInit();
    getAstrologers();
    getBanner();
    getUser();
    // getAstroCard();
  }

  void getAstrologers() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Astrologer(1, 5, "Himani ", "Singh", ["Hindi", "English"],
          ["Vedic, taro"], 12, 15, 15, 0, "assets/icons/astro1.png", 4.8),
      Astrologer(2, 1, "H", "s", ["Hindi", "English", "Sanskrit"],
          ["Vedic, taro"], 15, 15, 15, 0, "assets/icons/astro2.png", 4.8),
      Astrologer(3, 2, "Raghu", "kumar", ["Hindi", "English"], ["Vedic, taro"],
          15, 15, 15, 0, "assets/icons/astro3.png", 4.8),
      Astrologer(4, 3, "Alok", "Kaur", ["Hindi", "English"], ["Vedic, taro"],
          12, 15, 15, 0, "assets/icons/astro4.png", 4.8),
      Astrologer(5, 4, "Simran", "", ["Hindi", "English"], ["Vedic, taro"], 12,
          15, 15, 1, "assets/icons/astro5.png", 4.8),
      Astrologer(6, 1, "Dhayanchand", "", ["Hindi", "English"], ["Vedic, taro"],
          12, 15, 15, 1, "assets/icons/astro1.png", 4.8),
      Astrologer(7, 2, "Himmat", "", ["Hindi", "English"], ["Vedic, taro"], 12,
          15, 15, 1, "assets/icons/astro2.png", 4.8),
      Astrologer(8, 3, "Himani", "", ["Hindi", "English"], ["Vedic, taro"], 12,
          15, 15, 1, "assets/icons/astro3.png", 4.8),
      Astrologer(9, 4, "Himani ", "Singh", ["Hindi", "English"],
          ["Vedic, taro"], 12, 15, 15, 1, "assets/icons/astro4.png", 4.8),
      Astrologer(10, 5, "Rajjat", "Kumar", ["Hindi", "English"],
          ["Vedic, taro"], 12, 15, 15, 1, "assets/icons/astro5.png", 4.8),
    ];
    astrologers.value = serverResponse;
  }

  void getBanner() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      BannerModel(1, "assets/icons/banner1.png"),
      BannerModel(2, "assets/icons/banner1.png")
    ];
    banners.value = serverResponse;
  }

  void getUser() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      User(0, "assets/icons/astro1.png", 4.6, "abcd", "Very good"),
      User(1, "assets/icons/astro2.png", 4.5, "efgh", "good"),
      User(2, "assets/icons/astro3.png", 4.4, "ijkl", "bad"),
      User(3, "assets/icons/astro4.png", 4.3, "mnop", "not expected"),
      User(4, "assets/icons/astro5.png", 4.2, "qrst", "poor"),
      User(5, "assets/icons/astro1.png", 4.1, "wxyz", "very poor"),
    ];
    user.value = serverResponse;
  }
}
