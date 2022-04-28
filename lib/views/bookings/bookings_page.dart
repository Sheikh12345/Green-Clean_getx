import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/bookings/bookings_controller.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingsController>(
        init: BookingsController(),
        builder: (controller) => WillPopScope(
            child: controller.getWidgetForIndex(),
            onWillPop: () async {
              if (controller.bookingStackIndex != 0) {
                controller.setIndex(controller.bookingStackIndex - 1);
              }
              return false;
            }));
  }
}
