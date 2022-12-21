import 'package:astro/app/config/constant.dart';
import 'package:astro/app/config/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Widgets {
  static Widget customPaint() {
    print("Width2");
    print(Style.screenWidth);
    return CustomPaint(
      // size: Size(Style.screenHeight.h, 80.w),
      size: Size(
        Style.screenWidth.w,
        80.h,
      ),
      painter: RPSCustomPainter(),
    );
  }

  static Widget carousel() {
    CarouselController carouselController = CarouselController();
    ValueNotifier<int> sliderDot = ValueNotifier(0);

    return CarouselSlider.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
          InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(
                      "assets/icons/banner1.png",
                      height: 12.h,
                      width: 300.w,
                      fit: BoxFit.fill,
                    )),
              )),
      options: CarouselOptions(
        height: 150.0.h,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        viewportFraction: 0.95,
        onPageChanged: (index, carouselPageChangedReason) {
          sliderDot.value = index;
        },
      ),
      carouselController: carouselController,
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(Style.screenWidth, 0);
    path_0.lineTo(Style.screenWidth, size.height * 0.8373857.h);
    path_0.arcToPoint(Offset(0.w, size.height * 0.8373857.h),
        radius: Radius.elliptical(
            size.width * 2.668204.w, size.height * 8.180445.h),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = primaryColor.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
