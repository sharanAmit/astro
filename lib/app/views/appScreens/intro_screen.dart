import 'package:astro/app/config/constant.dart';
import 'package:astro/app/views/appScreens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/intro_controller.dart';

class IntroScreen extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor1,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 85.h),
            child: Text(
              "Astro",
              style: appHeader,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Image.asset("assets/icons/intro_screen.png"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.w, top: 60.h),
              child: SizedBox(
                height: MediaQuery.of(context).size.height.h / 5.h,
                child: Obx(() {
                  return Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      controller.text[controller.index.value],
                      style: GoogleFonts.urbanist(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: SizedBox(
              width: MediaQuery.of(context).size.width.w,
              height: 60.h,
              child: ElevatedButton(
                onPressed: () {
                  controller.increment();
                  if (controller.index.value == 2) {
                    controller.isDone.value = true;
                  } else if (controller.index.value > 2) {
                    Get.off(NavigationView());
                  }
                },
                child: Obx(
                  () {
                    return Text(controller.isDone.value ? "Done" : "Next");
                  },
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0.r),
                      side: BorderSide(
                        color: bordercolor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Get.off(NavigationView());
              },
              child: Text(
                "Skip",
                style: textbotton,
              ))
        ],
      ),
    );
  }
}
