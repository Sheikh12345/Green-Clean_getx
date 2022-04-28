import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/bookings/bookings_controller.dart';
import 'package:green_and_clean/views/bookings/bookings_stack/booking_detail.dart';
import 'package:green_and_clean/views/dashboard/dashboard_controller.dart';
import 'package:green_and_clean/views/widgets/booking_thumbnail.dart';

class BookingsList extends GetView<BookingsController> {
  const BookingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight / 2,
          ),
          Center(
            child: AutoSizeText(
              "Bookings",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: theme.primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.01),
                    width: width,
                    child: Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.changeBookingType(0);
                              },
                              child: AnimatedContainer(
                                padding: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: controller.bookingType == 0
                                                ? theme.primaryColor
                                                : theme.primaryColor
                                                    .withOpacity(0.3),
                                            width: 2))),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Fixed",
                                    presetFontSizes: [16],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.changeBookingType(1);
                              },
                              child: AnimatedContainer(
                                padding: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: controller.bookingType == 1
                                                ? theme.primaryColor
                                                : theme.primaryColor
                                                    .withOpacity(0.3),
                                            width: 2))),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Offers",
                                    presetFontSizes: [16],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.changeBookingType(2);
                              },
                              child: AnimatedContainer(
                                padding: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: controller.bookingType == 2
                                                ? theme.primaryColor
                                                : theme.primaryColor
                                                    .withOpacity(0.3),
                                            width: 2))),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Per Hour",
                                    presetFontSizes: [16],
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Expanded(
                    child: ListView.builder(
                        itemBuilder: (_, index) => BookingThumbnail(
                              onPressed: () => Get.find<BookingsController>()
                                  .setIndex(Get.find<BookingsController>()
                                          .bookingStackIndex +
                                      1),
                            )))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
