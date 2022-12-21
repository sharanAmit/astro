import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/login_corntroller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'navigation_screen.dart';
import '../../controllers/otp_controller.dart';

class OtpPage extends GetView<OtpController> {
  final LoginController loginController = Get.put(LoginController());
  final String from;
  OtpPage({this.from = "register", Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor1.withOpacity(1),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  "assets/icons/a.png",
                  width: MediaQuery.of(context).size.width.w,
                  height: MediaQuery.of(context).size.height.h,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Container(
                      height: 200.h,
                      width: MediaQuery.of(context).size.width.w,
                    ),
                    Text(
                      "Verification",
                      // style: MyAddress_Title,
                      style: GoogleFonts.urbanist(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Enter the code from the SMS \n we sent you",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(25, 60, 25, 0),
                      child: PinCodeTextField(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        controller: loginController.usernameController,
                        textStyle: GoogleFonts.urbanist(color: whitecolor),
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: bordercolor,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 6,
                        obscureText: true,
                        obscuringCharacter: '*',
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 6) {
                            return "Error";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5.r),
                            fieldHeight: 50.h,
                            fieldWidth: 50.w,
                            // activeFillColor: primaryColor,
                            selectedColor: primaryColor,
                            inactiveColor: whitecolor.withOpacity(0.2),
                            activeColor: Color(0XFFFF814C)),
                        cursorColor: primaryColor,
                        animationDuration: const Duration(milliseconds: 300),
                        // enableActiveFill: true,
                        keyboardType: TextInputType.number,

                        onCompleted: (v) {
                          debugPrint("Completed");
                        },
                        onChanged: (value) {
                          loginController.otpPin.value = value;
                        },
                        beforeTextPaste: (text) {
                          debugPrint("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height.h * 35 / 100,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0.h, horizontal: 30.w),
                      child: ButtonTheme(
                        height: 50.h,
                        child: TextButton(
                          onPressed: () {
                            if (loginController.otpPin.value.length >= 6 &&
                                loginController.otpPin.value ==
                                    loginController.usernameController.text) {
                              loginController.verifyOTP();
                              // Get.off(NavigationView());
                            } else {
                              loginController
                                  .showSnackBarText("Enter OTP correctly!");
                            }
                          },
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "VERIFY OTP".toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0XFFFFFFFF),
                              )
                            ],
                          )),
                        ),
                      ),
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10.h.w),
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            text: "I didn't recieve the code! ",
                            style: TextStyle(
                                fontSize: 13.sp, color: Color(0XFFFFFFFF)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Resend',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: primaryColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // code to open / launch terms of service link here
                                    }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                      padding: EdgeInsets.only(top: 70.h),
                      child: Column(
                        children: [
                          Text(
                            "Astro",
                            style: appHeader,
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
