import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/chat_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreenView extends GetView<ChatScreenController> {
  @override
  Widget build(BuildContext context) {
    Get.put(
      ChatScreenController(),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitecolor,
        toolbarHeight: 100,
        title: Row(
          children: [
            CircleAvatar(
              maxRadius: 30.r,
              child: ClipOval(
                child: Image.asset(
                  "assets/icons/astro1.png",
                  // colorBlendMode: BlendMode.colorBurn,
                  width: MediaQuery.of(context).size.width.w,
                  height: MediaQuery.of(context).size.height.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            width5,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Himani singh",
                  style: GoogleFonts.urbanist(color: primaryColor1),
                ),
                Row(
                  children: [
                    Text(
                      "Active Now",
                      style: GoogleFonts.urbanist(
                          color: activeNowTextColor, fontSize: 10),
                    ),
                    Text(
                      "•",
                      style: GoogleFonts.urbanist(color: green),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: darkprimaryColor,
        ),
        actions: [
          TextButton(
              onPressed: () {
                controller.showRatingDialog();
              },
              child: Text(
                "End Chat",
                style: GoogleFonts.urbanist(
                  color: red,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1,
                  fontSize: 14.sp,
                ),
              ))
          // Container(
          //   margin: EdgeInsets.only(top: 30, right: 20),
          //   height: 20,
          //   width: 80,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(5),
          //       border: Border.all(color: red)),
          //   child: Center(
          //     child: (Text(
          //       "Chat",
          //       style: GoogleFonts.urbanist(
          //         color: red,
          //         fontWeight: FontWeight.w700,
          //         letterSpacing: 1.1,
          //         fontSize: 14.sp,
          //       ),
          //     )),
          //   ),
          // )
        ],
      ),
      body: Obx(() {
        return Chat(
          messages: controller.messages,
          onAttachmentPressed: controller.handleAttachmentPressed,
          onMessageTap: controller.handleMessageTap,
          onPreviewDataFetched: controller.handlePreviewDataFetched,
          onSendPressed: controller.handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          user: controller.user.value,
        );
      }),
    );
  }
}











































            // Get.bottomSheet(
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: bgColor,
            //           image: DecorationImage(
            //               image: AssetImage("assets/icons/bg.png"),
            //               fit: BoxFit.cover),
            //         ),
            //         // color: primaryColor,
            //         height: 360,
            //         // width: MediaQuery.of(context).size.width * 80 / 100,
            //         child: Column(
            //           children: [
            //             Padding(
            //                 padding: EdgeInsets.only(
            //                   top: 25,
            //                 ),
            //                 child: Text(
            //                   "How likely are you to promote the \n expert?",
            //                   style: GoogleFonts.urbanist(
            //                       color: blackcolor,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.w600),
            //                 )),
            //             height10,
            //             height5,
            //             Column(
            //               children: [
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   children: [
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border:
            //                               Border.all(width: 1.3, color: red)),
            //                       child: Center(
            //                         child: Text(
            //                           "1",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border:
            //                               Border.all(width: 1.3, color: red)),
            //                       child: Center(
            //                         child: Text(
            //                           "2",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border:
            //                               Border.all(width: 1.3, color: red)),
            //                       child: Center(
            //                         child: Text(
            //                           "3",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border:
            //                               Border.all(width: 1.3, color: red)),
            //                       child: Center(
            //                         child: Text(
            //                           "4",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border:
            //                               Border.all(width: 1.3, color: red)),
            //                       child: Center(
            //                         child: Text(
            //                           "5",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border: Border.all(
            //                               width: 1.3,
            //                               color: Color(0XFF00BABA))),
            //                       child: Center(
            //                         child: Text(
            //                           "6",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border: Border.all(
            //                               width: 1.3,
            //                               color: Color(0XFF00BABA))),
            //                       child: Center(
            //                         child: Text(
            //                           "7",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border: Border.all(
            //                               width: 1.3,
            //                               color: Color(0XFF00BABA))),
            //                       child: Center(
            //                         child: Text(
            //                           "8",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border:
            //                               Border.all(width: 1.3, color: green)),
            //                       child: Center(
            //                         child: Text(
            //                           "9",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       height: 27,
            //                       width: 27,
            //                       decoration: BoxDecoration(
            //                           shape: BoxShape.circle,
            //                           border:
            //                               Border.all(width: 1.3, color: green)),
            //                       child: Center(
            //                         child: Text(
            //                           "10",
            //                           style: GoogleFonts.urbanist(fontSize: 10),
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 height10,
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.only(left: 10),
            //                       child: Text(
            //                         "Least Likely",
            //                         style: GoogleFonts.urbanist(
            //                             color: greyTextColor),
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(right: 10),
            //                       child: Text(
            //                         "Most Likely",
            //                         style: GoogleFonts.urbanist(
            //                             color: greyTextColor),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //             height50,
            //             Padding(
            //               padding: const EdgeInsets.only(
            //                 left: 15,
            //               ),
            //               child: Text(
            //                 "The data is confidential & your rating is not shown to the astrologer",
            //                 style: GoogleFonts.urbanist(
            //                   color: bottomSheetHeadingColor,
            //                   fontSize: 16,
            //                   fontWeight: FontWeight.w600,
            //                 ),
            //               ),
            //             ),
            //             height30,
            //             height5,
            //             SizedBox(
            //               width: MediaQuery.of(context).size.width.w - 35.w,
            //               height: 60.h,
            //               child: ElevatedButton(
            //                 onPressed: () {
            //                   Get.off(
            //                     NavigationView(),
            //                   );
            //                 },
            //                 child: Text("Submit"),
            //                 style: ButtonStyle(
            //                   backgroundColor:
            //                       MaterialStateProperty.all(elvatedButtonColor),
            //                   shape: MaterialStateProperty.all<
            //                       RoundedRectangleBorder>(
            //                     RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(10.0.r),
            //                       side: BorderSide(
            //                         color: bordercolor,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       isDismissible: true,
            //       enableDrag: false,
            //     );
