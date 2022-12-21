import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/home_controller.dart';
import 'package:astro/app/data/sample_data.dart';
import 'package:astro/app/utils/widgets/astro_call_detail_card.dart';
import 'package:astro/app/utils/widgets/astro_detail_card.dart';
import 'package:astro/app/utils/widgets/carousel_widget.dart';
import 'package:astro/app/utils/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/call_controller.dart';

class CallView extends GetView<CallController> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    Get.put(
      CallController(),
    );
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Stack(
            children: [
              Widgets.customPaint(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    return (homeController.banners.isNotEmpty)
                        ? CarouselWidget(banners: homeController.banners)
                        : CarouselLoadingWidget();
                  }),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 10.w),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.urbanist(
                          color: Color(0XFF000000),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 40.0.h,
                    child: ListView.builder(
                      itemCount: categories.length,
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0.w, vertical: 5.0.h),
                        child: Obx(() {
                          return InkWell(
                            onTap: () {
                              debugPrint("initial object");
                              if (categories[index].id == 0) {
                                controller.filteredAstro.value =
                                    controller.allAstrologer;
                                controller.setSelectedIndex(index);
                              } else {
                                controller.filter(categories[index].id);

                                controller.setSelectedIndex(index);
                              }
                              debugPrint("object");
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0.w, vertical: 5.0.h),
                              // height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    categories[index].icon,
                                    size: 13.0.sp,
                                    color: categories[index].color,
                                  ),
                                  width2,
                                  Text(
                                    categories[index].categoryName,
                                    style: GoogleFonts.urbanist(
                                        color: blackcolor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: controller.selectedIndex.value ==
                                              index
                                          ? primaryColor
                                          : categoriesBoxColor
                                              .withOpacity(0.10)),
                                  color: categoriesBoxColor.withOpacity(0.10),
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  Expanded(child: AstroDetailCallCard()),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
