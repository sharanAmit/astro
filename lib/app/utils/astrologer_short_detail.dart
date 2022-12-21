import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/navigation_controller.dart';
import 'package:astro/app/models/astrologer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletons/skeletons.dart';

class AstroCard extends StatelessWidget {
  List<Astrologer> astrologer;
  AstroCard({Key? key, required this.astrologer}) : super(key: key);

  final navigationController = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
          itemCount: astrologer.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 10.w, left: 10.w),
              child: Container(
                height: 130.h,
                width: 210.w,
                decoration: BoxDecoration(
                    color: primaryColor1.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.h,
                          ),
                          child: Stack(
                            children: [
                              CircleAvatar(
                                maxRadius: 30.r,
                                child: ClipOval(
                                  child: Image.asset(
                                    astrologer[index].profilePic,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              astrologer[index].isVerified == 1
                                  ? Icon(
                                      Icons.check_circle,
                                      color: Colors.blue,
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(astrologer[index].astrologerFirstName,
                                style: GoogleFonts.urbanist(
                                    color: primaryColor1,
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              "₹ ${astrologer[index].chatPrice}/min",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.w,
                                  fontSize: 12.sp),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 25.h,
                          width: 65.w,
                          child: Center(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Chat",
                                style: GoogleFonts.urbanist(
                                    color: whitecolor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: bordercolor,
                              borderRadius: BorderRadius.circular(4.r)),
                        ),
                        Container(
                          height: 25.h,
                          width: 65.w,
                          child: Center(
                            child: InkWell(
                              child: Text(
                                "Call",
                                style: GoogleFonts.urbanist(
                                  color: whitecolor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: bordercolor,
                              borderRadius: BorderRadius.circular(4.r)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    });
  }
}

class AstroCardLoadingWidget extends StatelessWidget {
  const AstroCardLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonAvatar(
      style: SkeletonAvatarStyle(
          width: 230.w,
          height: 130.h,
          borderRadius: BorderRadius.circular(20.r)),
    );
  }
}
