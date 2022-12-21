import 'package:astro/app/config/constant.dart';
import 'package:astro/app/controllers/login_corntroller.dart';
import 'package:astro/app/utils/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation_screen.dart';
import '../../controllers/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('Astro'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Widgets.customPaint(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Align(
                //   alignment: Alignment.center,
                //   child: Padding(
                //     padding: EdgeInsets.only(top: 70.h),
                //     child: Text(
                //       "Astro",
                //       style: profileappHeader,
                //     ),
                //   ),
                // ),
                SizedBox(height: 45.h),
                Container(
                  height: 60.h,
                  width: MediaQuery.of(context).size.width.w * 80 / 100,
                  decoration: BoxDecoration(
                    color: primaryColor1,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w, top: 17),
                    child: Text(
                      "Your Profile",
                      style: GoogleFonts.urbanist(
                          color: Color(0XFFFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Color(0XFFD9D9D9),
                    minRadius: 3.r,
                    child: ClipOval(
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        child: Icon(
                          Icons.person,
                          size: 45.sp,
                          color: bordercolor,
                        ),
                      ),
                    ),
                  ),
                ),
                height10,
                Text(
                  "Choose Profile",
                  style: GoogleFonts.urbanist(
                      color: primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.w, left: 18.w, top: 40.h),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: bordercolor,
                          width: 2.0.w,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: bordercolor,
                          width: 2.0.w,
                        ),
                      ),
                      filled: true,
                      hintStyle:
                          TextStyle(color: primaryColor1.withOpacity(0.2)),
                      hintText: "e.g Amit sharan",
                      fillColor: bordercolor.withOpacity(0.1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.w, left: 18.w, top: 25.h),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: bordercolor,
                            width: 2.0.w,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: bordercolor,
                            width: 2.0.w,
                          ),
                        ),
                        filled: true,
                        hintStyle:
                            TextStyle(color: primaryColor1.withOpacity(0.2)),
                        hintText: "e.g amit@pinsoutinnovation.com",
                        fillColor: bordercolor.withOpacity(0.1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.w, left: 18.w, top: 25.h),
                  child: TextFormField(
                    readOnly: true,
                    initialValue: controller.phone.value,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: bordercolor,
                            width: 2.0.w,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: bordercolor,
                            width: 2.0.w,
                          ),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                          color: primaryColor1.withOpacity(0.2),
                        ),
                        hintText: "e.g 8279668975",
                        fillColor: bordercolor.withOpacity(0.1)),
                  ),
                ),
                height80,
                height50,
                height20,
                SizedBox(
                  width: MediaQuery.of(context).size.width.w - 35.w,
                  height: 60.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(
                        NavigationView(),
                      );
                    },
                    child: Text("Save Changes"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(elvatedButtonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                          side: BorderSide(
                            color: bordercolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
