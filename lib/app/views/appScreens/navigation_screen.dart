import 'package:astro/app/config/constant.dart';
import 'package:astro/app/config/style.dart';
import 'package:astro/app/controllers/navigation_controller.dart';
import 'package:astro/app/utils/widgets/trial.dart';
import 'package:astro/app/views/appScreens/history_view.dart';
import 'package:astro/app/views/appScreens/call_view.dart';
import 'package:astro/app/views/appScreens/chat_view.dart';
import 'package:astro/app/views/appScreens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationView extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    Style().init(context);

    Get.put(NavigationController());
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        title: Text('Astro'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Obx(() {
          return IndexedStack(
            index: controller.selectedIndex.value,
            children: [
              HomeView(),
              ChatView(),
              CallView(),
              HistoryView(),
            ],
          );
        }),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: controller.changeTabIndex,
          currentIndex: controller.selectedIndex.value,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: navigationColor,
          elevation: 0,
          items: [
            _bottomNavigationBarItem(
              icon: Icons.home,
              label: 'Home',
            ),
            _bottomNavigationBarItem(
              icon: Icons.chat,
              label: 'Chat',
            ),
            _bottomNavigationBarItem(
              icon: Icons.call,
              label: 'Call',
            ),
            _bottomNavigationBarItem(
              icon: Icons.history,
              label: 'History',
            ),
          ],
        );
      }),
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
