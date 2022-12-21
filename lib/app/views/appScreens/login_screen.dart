import 'package:astro/app/config/constant.dart';
import 'package:astro/app/config/style.dart';
import 'package:astro/app/views/appScreens/otp_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../controllers/login_corntroller.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Get.put(
      LoginController(),
    );
    Style().init(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor1,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                "assets/icons/a.png",
                // colorBlendMode: BlendMode.colorBurn,
                width: MediaQuery.of(context).size.width.w,
                height: MediaQuery.of(context).size.height.h,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 60.h),
                  child: Text(
                    "Astro",
                    style: appHeader,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 88.h),
                child: Image.asset("assets/icons/login_screen.png"),
              ),
              Column(
                children: [
                  // Expanded(child: Container()),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height.h - 250.h,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.w, right: 18.w),
                      child: Obx(() {
                        return IntlPhoneField(
                          // onTap: () {
                          //   controller.requestHint();
                          // },
                          style: GoogleFonts.urbanist(color: whitecolor),
                          keyboardType: TextInputType.phone,
                          controller: controller.phoneController,
                          showCountryFlag: false,
                          showDropdownIcon: false,
                          initialValue: controller.countryDial.value,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: bordercolor, width: 2.0.w),
                              borderRadius: BorderRadius.circular(30.0.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.r),
                              borderSide: BorderSide(
                                color: bordercolor,
                                width: 2.0.w,
                              ),
                            ),
                            // filled: true,
                            hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                            hintText: "Type in your text",
                            // fillColor: bordercolor.withOpacity(0.1),
                          ),
                        );
                      }),
                      //     TextFormField(
                      //   controller: controller.phoneController,
                      //   keyboardType: TextInputType.phone,
                      //   decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderSide: BorderSide(color: bordercolor),
                      //         borderRadius: BorderRadius.circular(30.0.r),
                      //       ),
                      //       enabledBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(30.r),
                      //         borderSide: BorderSide(
                      //           color: bordercolor,
                      //           width: 2.0.w,
                      //         ),
                      //       ),
                      //       filled: true,
                      //       hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      //       hintText: "Type in your text",
                      //       fillColor: bordercolor.withOpacity(0.1)),
                      // ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.w, left: 18.w),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width.w,
                      height: 60.h,
                      child: ElevatedButton(
                        onPressed: () {
                          if (controller.phoneController.text.isEmpty) {
                            controller.showSnackBarText(
                                "Phone number is still empty!");
                          } else {
                            controller.verifyPhone(
                              controller.countryDial.value +
                                  controller.phoneController.text,
                            );
                            Get.off(OtpPage());
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Send OTP"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10.h.w),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'By Signing up, you agree to our ',
                          style: TextStyle(
                              fontSize: 10.sp, color: Color(0XFFFFFFFF)),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms of use',
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  color: primaryColor,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // code to open / launch terms of service link here
                                  }),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                  fontSize: 10.sp, color: Color(0XFFFFFFFF)),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: primaryColor,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // code to open / launch privacy policy link here
                                      })
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
