import 'package:astro/app/config/constant.dart';
import 'package:astro/app/data/drawer_list.dart';
import 'package:astro/app/views/appScreens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget drawer() {
  return SafeArea(
    child: Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(0.0),
            height: 500,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: drawerList.length,
                itemBuilder: (context, index) {
                  return drawerBodyTile(
                      drawerList[index]["title"].toString(),
                      drawerList[index]["icon"].toString(),
                      drawerList[index]["route"].toString());
                }),
          ),
        ],
      ),
    ),
  );
}

Widget drawerBodyTile(String title, String icon, String route) {
  return Card(
      elevation: 0.2,
      child: ListTile(
          leading: Image.asset(
            icon,
            color: primaryColor,
            fit: BoxFit.cover,
          ),
          title: Text(
            title,
            // style: drawer_title,
          ),
          onTap: () {
            if (title == "Profile") {
              Get.to(ProfileScreen());
            }
          }));
}
