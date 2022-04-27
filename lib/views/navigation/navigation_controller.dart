import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/dashboard/dashboard_page.dart';

import '../home/home_page.dart';

class NavigationController extends GetxController {
  int selectedIndex = 0;

  List<Widget> navigationWidgets = [
    HomePage(),
    DashboardPage(),
    SizedBox(),
    SizedBox(),
    SizedBox()
  ];

  setIndex(int index) {
    selectedIndex = index;
    update();
  }
}
