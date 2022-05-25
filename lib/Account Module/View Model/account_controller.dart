import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:green_and_clean/Account%20Module/View%20Controller/accounts_list.dart';
import 'package:green_and_clean/Account%20Module/View%20Controller/bookings.dart';
import 'package:green_and_clean/Account%20Module/View%20Controller/profile_page.dart';

class AccountController extends GetxController {
  int accountStackIndex = 0;

  RxInt bookingType = 0.obs;

  changeBookingType(int index) {
    bookingType.value = index;
  }

  setIndex(int index) {
    accountStackIndex = index;
    update();
  }

  getWidgetForIndex() {
    switch (accountStackIndex) {
      case 0:
        return const AccountsList();
      case 1:
        return const ProfilePage();
      case 2:
        return BookingsPage();
      default:
        //TODO implement reset page
        return const SizedBox();
    }
  }
}
