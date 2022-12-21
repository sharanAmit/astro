import 'package:astro/app/controllers/chat_controller.dart';
import 'package:astro/app/controllers/chat_screen_controller.dart';
import 'package:astro/app/controllers/home_controller.dart';
import 'package:astro/app/controllers/navigation_controller.dart';
import 'package:astro/app/controllers/call_controller.dart';
import 'package:astro/app/controllers/history_controller.dart';
import 'package:astro/app/controllers/intro_controller.dart';
import 'package:astro/app/controllers/otp_controller.dart';
import 'package:astro/app/controllers/login_corntroller.dart';
import 'package:astro/app/controllers/profile_controller.dart';
import 'package:astro/app/controllers/astro_detail_controller.dart';
import 'package:get/get.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(
      () => NavigationController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

class CallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CallController>(
      () => CallController(),
    );
  }
}

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(
      () => ChatController(),
    );
  }
}

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryController>(
      () => HistoryController(),
    );
  }
}

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroController>(
      () => IntroController(),
    );
  }
}

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(
      () => OtpController(),
    );
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}

class AstroDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AstroDetailController>(
      () => AstroDetailController(),
    );
  }
}

class ChatScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatScreenController>(
      () => ChatScreenController(),
    );
  }
}
