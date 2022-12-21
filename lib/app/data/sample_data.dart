import 'package:astro/app/config/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';

class Category {
  int id;
  String categoryName;
  Color color;
  IconData icon;
  Category(this.id, this.categoryName, this.icon, this.color);
}

RxList<Category> categories = [
  Category(0, "All", Icons.category, primaryColor),
  Category(1, "Love", CupertinoIcons.heart_fill, red),
  Category(2, "Career", CupertinoIcons.bag, blackcolor),
  Category(3, "Marriage", Icons.link, pink),
  Category(4, "Health", Icons.health_and_safety, red),
  Category(5, "Wallet", Icons.wallet, green),
].obs;
