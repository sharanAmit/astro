import 'package:astro/app/config/binding.dart';
import 'package:astro/app/views/appScreens/history_view.dart';
import 'package:astro/app/views/appScreens/intro_screen.dart';
import 'package:astro/app/views/appScreens/navigation_screen.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: "/home",
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
  ];
}
