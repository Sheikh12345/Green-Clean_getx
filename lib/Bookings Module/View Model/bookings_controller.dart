import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:green_and_clean/Bookings%20Module/View/booking_detail.dart';
import 'package:green_and_clean/Bookings%20Module/View/bookings_list.dart';

class BookingsController extends GetxController {
  int bookingStackIndex = 0;

  RxInt bookingType = 0.obs;

  changeBookingType(int index) {
    bookingType.value = index;
  }

  setIndex(int index) {
    bookingStackIndex = index;
    update();
  }

  getWidgetForIndex() {
    switch (bookingStackIndex) {
      case 0:
        return const BookingsList();
      case 1:
        return const BookingDetail();
      default:
        //TODO implement reset page
        return const SizedBox();
    }
  }
}
