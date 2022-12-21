import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/chat_controller.dart';
import 'package:astro/app/controllers/navigation_controller.dart';
import 'package:astro/app/utils/widgets/dash.dart';
import 'package:astro/app/views/appScreens/astro_detail_views.dart';
import 'package:astro/app/views/appScreens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AstroDetailChatCard extends StatelessWidget {
  AstroDetailChatCard({Key? key}) : super(key: key);

  final chatController = Get.put(ChatController());
  final navigationController = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          for (int index = 0;
              index < chatController.filteredAstro.length;
              index++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Material(
                child: InkWell(
                  onTap: () {
                    Get.to(AstroDetailView());
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 5.h, bottom: 5.h),
                    height: 120.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: blackcolor.withOpacity(0.25),
                          blurRadius: 1.0, // soften the shadow
                          // spreadRadius: 5.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            1.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      color: whitecolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        width10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  maxRadius: 35.r,
                                  child: ClipOval(
                                    child: Image.asset(
                                      chatController
                                          .filteredAstro[index].profilePic,
                                      // colorBlendMode: BlendMode.colorBurn,
                                      width:
                                          MediaQuery.of(context).size.width.w,
                                      height:
                                          MediaQuery.of(context).size.height.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                chatController
                                            .filteredAstro[index].isVerified ==
                                        1
                                    ? Icon(
                                        Icons.check_circle,
                                        color: Colors.blue,
                                      )
                                    : SizedBox()
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0XFFFF814C),
                                  size: 12.sp,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Text(
                                  chatController.filteredAstro[index].rating
                                      .toString(),
                                  style: GoogleFonts.urbanist(
                                      fontSize: 11.sp, letterSpacing: 1.1),
                                )
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 18.h, left: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                      chatController.filteredAstro[index]
                                          .astrologerFirstName,
                                      style: GoogleFonts.urbanist(
                                          color: primaryColor1,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600)),
                                  Text(
                                      chatController.filteredAstro[index]
                                          .astrologerSecondName,
                                      style: GoogleFonts.urbanist(
                                          color: primaryColor1,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 2.0.h),
                                height: 1.h,
                                width: 20.w,
                                color: primaryColor,
                              ),
                              Row(
                                children: [
                                  for (int i = 0;
                                      i <
                                          chatController.filteredAstro[index]
                                              .skills.length;
                                      i++)
                                    Text(
                                        "${chatController.filteredAstro[index].skills[i]}, ",
                                        style: GoogleFonts.urbanist(
                                            color: blackcolor,
                                            fontSize: 11.sp,
                                            letterSpacing: 1.1)),
                                ],
                              ),
                              Row(
                                children: [
                                  for (int i = 0;
                                      i <
                                          chatController.filteredAstro[index]
                                              .languages.length;
                                      i++)
                                    Text(
                                        "${chatController.filteredAstro[index].languages[i]}, ",
                                        style: GoogleFonts.urbanist(
                                            color: blackcolor,
                                            fontSize: 11.sp,
                                            letterSpacing: 1.1)),
                                ],
                              ),
                              Text(
                                  chatController.filteredAstro[index].experience
                                      .toString(),
                                  style: GoogleFonts.urbanist(
                                      color: blackcolor,
                                      fontSize: 11.sp,
                                      letterSpacing: 1.1)),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  elevation: 0,
                                  minimumSize: Size(80.w, 30.h)),
                              onPressed: () {
                                // await Future.delayed(Duration(seconds: 5));
                                (navigationController.selectedIndex.value == 2)
                                    ? SizedBox()
                                    : Get.defaultDialog(
                                        barrierDismissible: false,
                                        titleStyle: TextStyle(
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.1),
                                        backgroundColor: popupBgColor,
                                        titlePadding:
                                            EdgeInsets.only(top: 25.h),
                                        title: "You're all set!",
                                        textCancel: "Ok",
                                        cancelTextColor: primaryColor,
                                        buttonColor: primaryColor,
                                        onCancel: () async {
                                          await Future.delayed(
                                              Duration(seconds: 1));
                                          Get.bottomSheet(
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: bgColor,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/icons/bg.png"),
                                                    fit: BoxFit.cover),
                                              ),
                                              // color: primaryColor,
                                              height: 510,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  80 /
                                                  100,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 25, left: 95),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          CupertinoIcons
                                                              .chat_bubble_text,
                                                          size: 25,
                                                          color: greyTextColor,
                                                        ),
                                                        width10,
                                                        Text(
                                                          "Incoming Chat request",
                                                          style: GoogleFonts
                                                              .urbanist(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 16,
                                                                  color:
                                                                      bottomSheetHeadingColor),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  height2,
                                                  height1,
                                                  Center(
                                                    child: Text(
                                                      "Astro",
                                                      style:
                                                          GoogleFonts.urbanist(
                                                              fontSize: 30,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: tabColor),
                                                    ),
                                                  ),
                                                  height20,
                                                  CircleAvatar(
                                                    maxRadius: 55.r,
                                                    child: ClipOval(
                                                      child: Image.asset(
                                                        chatController
                                                            .filteredAstro[
                                                                index]
                                                            .profilePic,
                                                        // colorBlendMode: BlendMode.colorBurn,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width
                                                            .w,
                                                        height: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height
                                                            .h,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  height10,
                                                  height2,
                                                  height1,
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                          chatController
                                                              .filteredAstro[
                                                                  index]
                                                              .astrologerFirstName,
                                                          style: GoogleFonts.urbanist(
                                                              color:
                                                                  primaryColor1,
                                                              fontSize: 35.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                      Text(
                                                          chatController
                                                              .filteredAstro[
                                                                  index]
                                                              .astrologerSecondName,
                                                          style: GoogleFonts.urbanist(
                                                              color:
                                                                  primaryColor1,
                                                              fontSize: 35.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                    ],
                                                  ),
                                                  height5,
                                                  Text(
                                                    "Please accept the Chat request",
                                                    style: GoogleFonts.urbanist(
                                                      color:
                                                          bottomSheetHeadingColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  height30,
                                                  height5,
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: Column(
                                                          children: [
                                                            Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 45,
                                                                  height: 45,
                                                                  decoration: BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border.all(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              red)),
                                                                ),
                                                                Icon(
                                                                  Icons.close,
                                                                  size: 28,
                                                                  color: red,
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              "Reject",
                                                              style: GoogleFonts
                                                                  .urbanist(
                                                                color: red,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.to(
                                                              ChatScreenView());
                                                        },
                                                        child: Column(
                                                          children: [
                                                            Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 45,
                                                                  height: 45,
                                                                  decoration: BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border.all(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              green)),
                                                                ),
                                                                Icon(
                                                                  Icons.check,
                                                                  size: 28,
                                                                  color: green,
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              "Accept",
                                                              style: GoogleFonts
                                                                  .urbanist(
                                                                color: green,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            isDismissible: false,
                                            enableDrag: false,
                                          );
                                        },
                                        content: SizedBox(
                                          height: 290.h,
                                          width: 315.w,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25.h,
                                                    left: 25.w,
                                                    right: 25.w),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CircleAvatar(
                                                      maxRadius: 40.r,
                                                      child: ClipOval(
                                                        child: Image.asset(
                                                          "assets/icons/astro1.png",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Dash(
                                                        direction:
                                                            Axis.horizontal,
                                                        length: 100,
                                                        dashLength: 5.w,
                                                        dashColor:
                                                            primaryColor),
                                                    CircleAvatar(
                                                      maxRadius: 40.r,
                                                      child: ClipOval(
                                                        child: Image.asset(
                                                          "assets/icons/astro2.png",
                                                          // colorBlendMode: BlendMode.colorBurn,

                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              height10,
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25.h,
                                                    left: 12.r,
                                                    right: 12.r),
                                                child: (navigationController
                                                            .selectedIndex
                                                            .value ==
                                                        2)
                                                    ? Text(
                                                        "Himani Singh is offline. Call might get delayed",
                                                        style: GoogleFonts
                                                            .urbanist(
                                                          letterSpacing: 1.1,
                                                          wordSpacing: 2,
                                                          color: blackcolor
                                                              .withOpacity(0.8),
                                                          fontSize: 18.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    : Text(
                                                        "Himani Singh is offline. Chat might get delayed",
                                                        style: GoogleFonts
                                                            .urbanist(
                                                          letterSpacing: 1.1,
                                                          wordSpacing: 2,
                                                          color: blackcolor
                                                              .withOpacity(0.8),
                                                          fontSize: 18.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                              ),
                                              height10,
                                              height5,
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 8.h,
                                                    left: 12.w,
                                                    right: 12.w),
                                                child: Text(
                                                  "Astrologer will try to answer atleast one question in this 5 mins season",
                                                  style: GoogleFonts.urbanist(
                                                    letterSpacing: 1.1,
                                                    color: blackcolor
                                                        .withOpacity(0.8),
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                              },
                              child:
                                  (navigationController.selectedIndex.value ==
                                          2)
                                      ? Text(
                                          "Call",
                                          style: GoogleFonts.urbanist(
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 1.1,
                                            fontSize: 14.sp,
                                          ),
                                        )
                                      : Text(
                                          "Chat",
                                          style: GoogleFonts.urbanist(
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 1.1,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                            ),
                            Text(
                              "${chatController.filteredAstro[index].chatPrice}/min",
                              style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                                fontSize: 11.sp,
                              ),
                            )
                          ],
                        ),
                        width10,
                        width5
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}
