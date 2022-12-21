import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/home_controller.dart';
import 'package:astro/app/utils/widgets/user_review_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../controllers/call_controller.dart';

class AstroDetailView extends GetView<CallController> {
  final homeCOntroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text("Profile"),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 45.h,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2.w),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                width: 180.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.message,
                      color: primaryColor,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Chat",
                          style: GoogleFonts.urbanist(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Wait - 5m ",
                          style: GoogleFonts.urbanist(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 45.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              width: 180.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.phone,
                    color: primaryColor,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Call",
                        style: GoogleFonts.urbanist(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Online",
                        style: GoogleFonts.urbanist(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: green),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Container(
                height: 198.h,
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
                    borderRadius: BorderRadius.circular(10.r),
                    color: whitecolor),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        width10,
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 45.r,
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/icons/astro1.png",

                                        // colorBlendMode: BlendMode.colorBurn,
                                        width:
                                            MediaQuery.of(context).size.width.w,
                                        height: MediaQuery.of(context)
                                            .size
                                            .height
                                            .h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: whitecolor, fontSize: 13.sp),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0.r),
                                  )),
                                  minimumSize: MaterialStateProperty.all(
                                      Size(75.w, 7.h)),
                                  backgroundColor:
                                      MaterialStateProperty.all(primaryColor)),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 18.h, left: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Himani singh",
                                  style: GoogleFonts.urbanist(
                                      color: primaryColor1,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600)),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 2.0.h),
                                height: 1.h,
                                width: 20.w,
                                color: primaryColor,
                              ),
                              Row(
                                children: [
                                  Text("Vedic ,",
                                      style: GoogleFonts.urbanist(
                                          color: blackcolor,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.1)),
                                  Text("Tora",
                                      style: GoogleFonts.urbanist(
                                          color: blackcolor,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.1)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Hindi",
                                      style: GoogleFonts.urbanist(
                                          color: blackcolor,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.1)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Exp:",
                                      style: GoogleFonts.urbanist(
                                          color: blackcolor,
                                          fontSize: 11.sp,
                                          letterSpacing: 1.1)),
                                  Text("12",
                                      style: GoogleFonts.urbanist(
                                          color: blackcolor,
                                          fontSize: 11.sp,
                                          letterSpacing: 1.1)),
                                ],
                              ),
                              Text(
                                "5/min",
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1,
                                  fontSize: 11.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        height: 1.h,
                        width: MediaQuery.of(context).size.width.w,
                        color: primaryColor1,
                      ),
                    ),
                    height5,
                    height2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.message,
                              size: 25.sp,
                            ),
                            width10,
                            width10,
                            Text(
                              "10k mins",
                              style: GoogleFonts.urbanist(
                                  fontSize: 15.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Container(
                          height: 15.h,
                          width: 1.w,
                          color: blackcolor,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 25.sp,
                              ),
                              width10,
                              width10,
                              Text(
                                "1k mins",
                                style: GoogleFonts.urbanist(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 15.h,
                          width: 1.w,
                          color: blackcolor,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.videocam,
                                size: 28.sp,
                              ),
                              width10,
                              width10,
                              Text(
                                "1k min",
                                style: GoogleFonts.urbanist(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Container(
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
                    borderRadius: BorderRadius.circular(10.r),
                    color: whitecolor),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 16.0.sp,
                  ),
                  child: Padding(
                    key: const Key('showMore'),
                    padding: EdgeInsets.all(16.0.h.w),
                    child: ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      // preDataText: "AMANDA",
                      // preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                      style: GoogleFonts.urbanist(
                        color: blackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      moreStyle: GoogleFonts.urbanist(
                          color: primaryColor, fontWeight: FontWeight.w700),
                      colorClickableText: primaryColor,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '...Show more',
                      trimExpandedText: ' show less',
                    ),
                  ),
                ),
              ),
            ),
            height5,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ratings & Reviews",
                            style: GoogleFonts.urbanist(
                                fontSize: 18.sp, fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30.w),
                                child: Text("4.5",
                                    style:
                                        GoogleFonts.urbanist(fontSize: 40.sp)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.w),
                                child: RatingBar.builder(
                                  itemSize: 15.sp,
                                  initialRating: 4.5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.w),
                                child: Row(
                                  children: [
                                    Icon(Icons.person_rounded),
                                    Text("2580 orders")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("5"),
                                        LinearPercentIndicator(
                                          width: 200.0.w,
                                          lineHeight: 15.0,
                                          percent: 0.9,
                                          progressColor: Colors.red,
                                          barRadius: Radius.circular(16.r),
                                        ),
                                      ],
                                    ),
                                    height5,
                                    Row(
                                      children: [
                                        Text("4"),
                                        LinearPercentIndicator(
                                          width: 200.0.r,
                                          lineHeight: 15.0.h,
                                          percent: 0.7,
                                          progressColor: Colors.orange,
                                          barRadius: Radius.circular(16.r),
                                        ),
                                      ],
                                    ),
                                    height5,
                                    Row(
                                      children: [
                                        Text("3"),
                                        LinearPercentIndicator(
                                          width: 200.0.r,
                                          lineHeight: 15.0.h,
                                          percent: 0.5,
                                          progressColor: Colors.blue,
                                          barRadius: Radius.circular(16.r),
                                        ),
                                      ],
                                    ),
                                    height5,
                                    Row(
                                      children: [
                                        Text("2"),
                                        LinearPercentIndicator(
                                          width: 200.0.w,
                                          lineHeight: 15.0.h,
                                          percent: 0.3,
                                          progressColor: primaryColor,
                                          barRadius: Radius.circular(16.h),
                                        ),
                                      ],
                                    ),
                                    height5,
                                    Row(
                                      children: [
                                        Text("1"),
                                        LinearPercentIndicator(
                                          width: 200.0.w,
                                          lineHeight: 15.0.h,
                                          percent: 0.1,
                                          progressColor: primaryColor1,
                                          barRadius: Radius.circular(16.w),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      height10
                    ],
                  ),
                ),
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
                  borderRadius: BorderRadius.circular(10.r),
                  color: whitecolor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("User Reviews",
                      style: GoogleFonts.urbanist(
                          fontSize: 15.sp, fontWeight: FontWeight.w600)),
                  TextButton(
                      onPressed: () {},
                      child: Text("View All",
                          style: GoogleFonts.urbanist(
                              color: primaryColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600)))
                ],
              ),
            ),
            SizedBox(
              height: 200.h,
              child: UserReviewCard(
                user: homeCOntroller.user,
              ),
            ),
            height5,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Check Similar Consultants",
                              style: GoogleFonts.urbanist(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500)),
                          Icon(Icons.info)
                        ],
                      ),
                    ),
                    height10,
                    SizedBox(
                      height: 200.h,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.only(left: 10.w, right: 10.w),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 35.w),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 55.r,
                                  child: ClipOval(
                                    child: Image.asset(
                                      homeCOntroller
                                          .astrologers[index].profilePic,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  homeCOntroller
                                      .astrologers[index].astrologerFirstName,
                                  style: GoogleFonts.urbanist(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "₹${homeCOntroller.astrologers[index].chatPrice}",
                                      style: GoogleFonts.urbanist(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("/min")
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: homeCOntroller.astrologers.length,
                      ),
                    )
                  ],
                ),
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
                  borderRadius: BorderRadius.circular(10.r),
                  color: whitecolor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
