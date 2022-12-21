import 'package:astro/app/views/appScreens/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smart_auth/smart_auth.dart';

class LoginController extends GetxController {
  final count = 0.obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  double screenHeight = 0;
  double screenWidth = 0;
  double bottom = 0;

  RxString otpPin = " ".obs;
  RxString countryDial = "+91".obs;
  RxString verID = " ".obs;

  int screenState = 0;
  Future<void> verifyPhone(String number) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: number,
      timeout: const Duration(seconds: 40),
      verificationCompleted: (PhoneAuthCredential credential) {
        showSnackBarText("Auth Completed!");
      },
      verificationFailed: (FirebaseAuthException e) {
        showSnackBarText("Auth Failed!");
      },
      codeSent: (String id, int? resendToken) {
        showSnackBarText("OTP Sent!");
        verID.value = id;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        showSnackBarText("Timeout!");
      },
    );
  }

  void showSnackBarText(String text) {
    Get.snackbar("", text);
  }

  Future<void> verifyOTP() async {
    await FirebaseAuth.instance
        .signInWithCredential(
      PhoneAuthProvider.credential(
        verificationId: verID.value,
        smsCode: otpPin.value,
      ),
    )
        .whenComplete(() {
      Get.off(
        ProfileScreen(),
      );
    });
    otpPin.value = usernameController.text;
  }

  void requestHint() async {
    final res = await SmartAuth().requestHint(
      isPhoneNumberIdentifierSupported: true,
      isEmailAddressIdentifierSupported: false,
      showCancelButton: true,
    );
    debugPrint('requestHint: $res');
  }
}
