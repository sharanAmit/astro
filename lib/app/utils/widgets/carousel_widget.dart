import 'package:astro/app/config/style.dart';
import 'package:astro/app/controllers/home_controller.dart';
import 'package:astro/app/models/banner_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

class CarouselWidget extends StatelessWidget {
  List<BannerModel> banners;
  CarouselWidget({Key? key, required this.banners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
          InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      banners[itemIndex].bannerUrl,
                      fit: BoxFit.fill,
                    )),
              )),
      options: CarouselOptions(
        height: 150.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        viewportFraction: 0.95,
        onPageChanged: (index, carouselPageChangedReason) {},
      ),
      carouselController: Get.find<HomeController>().carouselController,
    );
  }
}

class CarouselLoadingWidget extends StatelessWidget {
  const CarouselLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonAvatar(
      style: SkeletonAvatarStyle(
          width: Style.screenWidth * 0.95,
          height: 150.0,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
