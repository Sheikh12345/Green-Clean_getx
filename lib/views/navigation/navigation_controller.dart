import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/bookings/bookings_page.dart';
import 'package:green_and_clean/views/dashboard/dashboard_page.dart';

import '../home/home_page.dart';

class NavigationController extends GetxController {
  int selectedIndex = 0;

  List<Widget> navigationWidgets = [
    HomePage(),
    DashboardPage(),
    BookingsPage(),
    SizedBox(),
  ];

  setIndex(int index) {
    selectedIndex = index;
    update();
  }

  @override
  void onInit() {
    print("initializing");
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent));
    super.onInit();
  }
}
