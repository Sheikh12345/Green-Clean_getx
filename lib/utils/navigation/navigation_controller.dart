import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Account%20Module/View%20Controller/account_page.dart';
import 'package:green_and_clean/Bookings%20Module/View%20Controller/bookings_page.dart';
import 'package:green_and_clean/Dashboard%20Module/View%20Controller/dashboard_page.dart';
import '../../Home Module/View Controller/home_page.dart';

class NavigationController extends GetxController {
  int selectedIndex = 0;

  List<Widget> navigationWidgets = [
    const HomePage(),
    const DashboardPage(),
    const BookingsPage(),
    const AccountPage(),
  ];

  setIndex(int index) {
    selectedIndex = index;
    update();
  }

  @override
  void onInit() {
    print("initializing");
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent));
    super.onInit();
  }
}
