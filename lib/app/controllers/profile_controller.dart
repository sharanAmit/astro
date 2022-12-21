import 'package:astro/app/views/appScreens/navigation_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final count = 0.obs;

  final GlobalKey<FormState> profileKey = GlobalKey<FormState>();
  final TextEditingController phoneNumbercontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();

  var emails = false.obs;
  var name = "";
  var phoneNumber = "".obs;
  var email = "";
  RxString phone = "".obs;
  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  @override
  void onColse() {
    super.onClose();
    namecontroller.dispose();
    phoneNumbercontroller.dispose();
    emailcontroller.dispose();
  }

  getUser() {
    phone.value = FirebaseAuth.instance.currentUser!.phoneNumber!;
    // FirebaseAuth.instance.currentUser.then((user) {
    //   phone.value = user.phoneNumber;
    // });
  }

  String? validate(String value) {
    if (value.isEmpty) {
      return "Required filed";
    } else {
      return null;
    }
  }

  // String? phoneValidator(v) {
  //   if (v!.length < 10) {
  //     return "Enter Valid Phone number";
  //   } else {
  //     return null;
  //   }
  // }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide a valid email";
    }
    return null;
  }

  void checkLogin() {
    final isValid = profileKey.currentState!.validate();
    if (isValid) {
      Get.off(
        NavigationView(),
      );
    }
    profileKey.currentState!.save();
  }
}
