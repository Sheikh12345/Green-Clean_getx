import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:green_and_clean/views/account/account_stack/accounts_list.dart';
import 'package:green_and_clean/views/account/account_stack/bookings.dart';
import 'package:green_and_clean/views/account/account_stack/profile_page.dart';
import 'package:green_and_clean/views/home/home_stack/add_payment_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaners_list.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_category_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_order_summary.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_property_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_schedule_page.dart';
import 'package:green_and_clean/views/home/home_stack/cleaning_type_page.dart';
import 'package:green_and_clean/views/home/home_stack/clearner_detail_page.dart';
import 'package:green_and_clean/views/home/home_stack/order_success_page.dart';

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
        return AccountsList();
      case 1:
        return ProfilePage();
      case 2:
        return BookingsPage();
      default:
      //TODO implement reset page
        return SizedBox();
    }
  }
}
