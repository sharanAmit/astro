import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/home_controller.dart';
import 'package:astro/app/utils/astrologer_short_detail.dart';
import 'package:astro/app/utils/widgets/astro_cards.dart';
import 'package:astro/app/utils/widgets/astro_detail_card.dart';
import 'package:astro/app/utils/widgets/carousel_widget.dart';
import 'package:astro/app/utils/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    print("Width");
    print(MediaQuery.of(context).size.width);
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Widgets.customPaint(),
                Column(
                  children: [
                    Obx(() {
                      return (controller.banners.isNotEmpty)
                          ? CarouselWidget(banners: controller.banners)
                          : CarouselLoadingWidget();
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            "Career Astrologers",
                            style: GoogleFonts.urbanist(
                                color: Color(0XFF000000),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "View All",
                                  style: GoogleFonts.urbanist(
                                      color: Color(0XFF000000),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2.0.h),
                                  height: 1.h,
                                  width: 60.w,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 120.h, child: AstroDetailCard()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            "Love Astrologers",
                            style: GoogleFonts.urbanist(
                                color: Color(0XFF000000),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "View All",
                                  style: GoogleFonts.urbanist(
                                      color: Color(0XFF000000),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2.0.h),
                                  height: 1.h,
                                  width: 60.w,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 120.h, child: AstroDetailCard()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            "Marriage Astrologers",
                            style: GoogleFonts.urbanist(
                                color: Color(0XFF000000),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "View All",
                                  style: GoogleFonts.urbanist(
                                      color: Color(0XFF000000),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2.0.h),
                                  height: 1.h,
                                  width: 60.w,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 120.h, child: AstroDetailCard()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            "Health Astrologers",
                            style: GoogleFonts.urbanist(
                                color: Color(0XFF000000),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "View All",
                                  style: GoogleFonts.urbanist(
                                      color: Color(0XFF000000),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2.0.h),
                                  height: 1.h,
                                  width: 60.w,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 120.h, child: AstroDetailCard())
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
