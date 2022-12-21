import 'package:astro/app/config/constant.dart';
import 'package:astro/app/config/style.dart';
import 'package:astro/app/controllers/history_controller.dart';
import 'package:astro/app/controllers/home_controller.dart';
import 'package:astro/app/utils/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryView extends GetView<HistoryController> {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryController());
    Style().init(context);

    return Stack(
      children: [
        Image.asset("assets/icons/bg.png"),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder: ((context, innerBoxIsScrolled) {
                  controller.isNestedScroll.value = innerBoxIsScrolled;
                  return [
                    SliverAppBar(
                      backgroundColor: Colors.transparent,
                      collapsedHeight: 150,
                      expandedHeight: 150,
                      flexibleSpace: Stack(
                        children: [
                          Widgets.customPaint(),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 30.0),
                              // margin: EdgeInsets.only(left: 25.w),
                              height: 60.h,
                              width: Get.width.w * 80 / 100,
                              decoration: BoxDecoration(
                                color: primaryColor1,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
                                    "History",
                                    style: GoogleFonts.urbanist(
                                        color: Color(0XFFFFFFFF),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: HeaderDelegate(
                        TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: tabColor,
                          indicatorWeight: 3.0,
                          tabs: [
                            Tab(
                              child: Container(
                                height: 34.h,
                                width: 120.w,
                                // decoration: BoxDecoration(
                                //   color: greyishColor,
                                //   borderRadius: BorderRadius.circular(5.r),
                                // ),
                                // color: primaryColor,
                                child: Center(
                                  child: Text(
                                    "Wallet",
                                    style: GoogleFonts.urbanist(
                                        color: blackcolor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: 34.h,
                                width: 120.w,
                                // decoration: BoxDecoration(
                                //   color: greyishColor,
                                //   borderRadius: BorderRadius.circular(5.r),
                                // ),
                                // color: primaryColor,
                                child: Center(
                                  child: Text(
                                    "Chat",
                                    style: GoogleFonts.urbanist(
                                        color: blackcolor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: 34.h,
                                width: 120.w,
                                // decoration: BoxDecoration(
                                //   color: greyishColor,
                                //   borderRadius: BorderRadius.circular(5.r),
                                // ),
                                // color: primaryColor,
                                child: Center(
                                  child: Text(
                                    "Call",
                                    style: GoogleFonts.urbanist(
                                        color: blackcolor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ];
                }),
                body: TabBarView(
                  children: [
                    Column(
                      children: [
                        Obx(() {
                          return (controller.isNestedScroll.value)
                              ? height50
                              : height1;
                        }),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Available Balance",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 15,
                                        letterSpacing: 1.3,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  height10,
                                  Text(
                                    "₹ 0",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 22,
                                        letterSpacing: 1.3,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 110,
                              margin: EdgeInsets.only(left: 110),
                              // padding: EdgeInsets.only(top: 15, left: 105),
                              decoration: BoxDecoration(
                                  color: darkprimaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Recharge",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 15,
                                      color: whitecolor,
                                      letterSpacing: 1.3,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.isWallet.value = true;
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 7, top: 15),
                                height: 45,
                                decoration: BoxDecoration(
                                  color: darkprimaryColor,
                                  borderRadius: BorderRadius.circular(35.r),
                                ),
                                width: 200,
                                child: Center(
                                  child: Text(
                                    "Wallet Transaction",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14,
                                      color: whitecolor,
                                      letterSpacing: 1.3,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            width10,
                            InkWell(
                              onTap: () {
                                controller.isWallet.value = false;
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 15,
                                ),
                                height: 45,
                                decoration: BoxDecoration(
                                  color: lightGrey,
                                  borderRadius: BorderRadius.circular(28.r),
                                ),
                                width: 180,
                                child: Center(
                                  child: Text(
                                    "Payment Logs",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 14,
                                        color: blackcolor,
                                        letterSpacing: 1.3,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Obx(() {
                          return controller.isWallet.value == true
                              ? Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: controller.wallet.length,
                                      physics: BouncingScrollPhysics(),
                                      itemBuilder: ((context, index) {
                                        return Container(
                                          padding: EdgeInsets.only(
                                            left: 15,
                                            top: 10,
                                            bottom: 15,
                                          ),
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: blackcolor
                                                    .withOpacity(0.25),
                                                blurRadius:
                                                    1.0, // soften the shadow
                                                // spreadRadius: 5.0, //extend the shadow
                                                offset: Offset(
                                                  0.0, // Move to right 10  horizontally
                                                  1.0, // Move to bottom 10 Vertically
                                                ),
                                              )
                                            ],
                                            color: whitecolor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          margin: EdgeInsets.only(
                                            left: 10,
                                            top: 10,
                                            right: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Chat with ${controller.wallet[index].astrologersName}",
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: primaryColor1,
                                                    ),
                                                  ),
                                                  Text(
                                                    "For ${controller.wallet[index].time} Minutes",
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: primaryColor1,
                                                    ),
                                                  ),
                                                  height5,
                                                  Text(
                                                    controller
                                                        .wallet[index].dateTime,
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  height5,
                                                  Row(
                                                    children: [
                                                      Text(
                                                        controller
                                                            .wallet[index].code,
                                                        style: GoogleFonts
                                                            .urbanist(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: blackcolor
                                                                    .withOpacity(
                                                                        0.8)),
                                                      ),
                                                      width5,
                                                      Icon(
                                                        Icons.copy,
                                                        size: 10,
                                                      )
                                                    ],
                                                  ),
                                                  height5,
                                                ],
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15, bottom: 5),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                          controller
                                                              .wallet[index]
                                                              .amount
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .urbanist(
                                                                  color: green,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        );
                                      })),
                                )
                              : Text(
                                  "Nothing to show",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: lightGrey),
                                );
                        }),
                      ],
                    ),
                    Column(
                      children: [
                        height20,
                        Container(
                          // padding: EdgeInsets.only(bottom: 15),
                          height: 45,
                          width: MediaQuery.of(context).size.width * 95 / 100,
                          decoration: BoxDecoration(
                            color: whitecolor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              controller.search(value);
                              print(value);
                            },
                            decoration: InputDecoration(
                              hintStyle: GoogleFonts.urbanist(
                                color: lightGrey,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: 12,
                                left: 15,
                                right: 15,
                              ), // add padding to adjust text
                              isDense: true,

                              hintText: "Search",
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                  bottom: 0,
                                  left: 15,
                                  right: 15,
                                ), // add padding to adjust icon
                                child: Icon(
                                  Icons.search,
                                  color: lightGrey,
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: controller.chatHistory.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                    top: 15,
                                    bottom: 15,
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
                                      color: whitecolor,
                                      borderRadius: BorderRadius.circular(10)),
                                  margin: EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller
                                                .chatHistory[index].chatcode,
                                            style: GoogleFonts.urbanist(
                                              fontSize: 12,
                                              color: greyTextColor,
                                            ),
                                          ),
                                          height5,
                                          Text(
                                            controller.chatHistory[index]
                                                .astrologersName,
                                            style: GoogleFonts.urbanist(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: primaryColor1,
                                            ),
                                          ),
                                          height5,
                                          Text(
                                            controller
                                                .chatHistory[index].dateTime,
                                            style: GoogleFonts.urbanist(
                                              fontSize: 12,
                                            ),
                                          ),
                                          height5,
                                          Text(
                                            controller
                                                .chatHistory[index].chatStatus,
                                            style: GoogleFonts.urbanist(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: green,
                                            ),
                                          ),
                                          height5,
                                          Row(
                                            children: [
                                              Text(
                                                "Chat Type: ",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                controller.chatHistory[index]
                                                    .chatType,
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: red,
                                                ),
                                              ),
                                            ],
                                          ),
                                          height5,
                                          Row(
                                            children: [
                                              Text(
                                                "Rate: ",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "${controller.chatHistory[index].charge}/min.",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          height5,
                                          Row(
                                            children: [
                                              Text(
                                                "Deduction: ",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "₹${controller.chatHistory[index].amountDeducted}",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          height5,
                                          Row(
                                            children: [
                                              Text(
                                                "Duration: ",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "${controller.chatHistory[index].timeDuration}min.",
                                                style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          height5,
                                          height2,
                                          Container(
                                            height: 30,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              color: lightprimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.whatsapp_rounded,
                                                  color: green,
                                                  size: 22,
                                                ),
                                                width5,
                                                Text(
                                                  "Share with your friends",
                                                  style: GoogleFonts.urbanist(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15, bottom: 75),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              maxRadius: 35.r,
                                              child: ClipOval(
                                                child: Image.asset(
                                                  "assets/icons/astro1.png",
                                                  // colorBlendMode: BlendMode.colorBurn,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width
                                                      .w,
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height
                                                      .h,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            height5,
                                            Text(
                                              "${homeController.astrologers[index].chatPrice}/min.",
                                              style: GoogleFonts.urbanist(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            height2,
                                            Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border:
                                                      Border.all(color: green)),
                                              child: Center(
                                                child: (Text(
                                                  "Chat",
                                                  style: GoogleFonts.urbanist(
                                                    color: green,
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 1.1,
                                                    fontSize: 14.sp,
                                                  ),
                                                )),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Nothing to show ",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  HeaderDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
        color: (shrinkOffset == 0.0) ? Colors.transparent : whitecolor,
        child: tabBar);
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
