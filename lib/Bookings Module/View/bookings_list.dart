import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Bookings%20Module/View%20Model/bookings_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/booking_thumbnail.dart';

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
          const AppBarView(
            title: "Bookings",
            enableBackButton: false,
            enableTrailingButton: false,
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
                const SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff19E6FF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: 15),
                    width: width,
                    child: Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.changeBookingType(0);
                              },
                              child: AnimatedContainer(
                                padding: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border: controller.bookingType.value == 0
                                        ? Border(
                                            bottom: BorderSide(
                                                color: theme.primaryColor,
                                                width: 1.5))
                                        : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Fixed",
                                    presetFontSizes: const [16],
                                    style: TextStyle(
                                        color: controller.bookingType.value == 0
                                            ? Colors.black
                                            : Colors.black38),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.changeBookingType(1);
                              },
                              child: AnimatedContainer(
                                padding: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border: controller.bookingType.value == 1
                                        ? Border(
                                            bottom: BorderSide(
                                                color: theme.primaryColor,
                                                width: 1.5))
                                        : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Offers",
                                    presetFontSizes: const [16],
                                    style: TextStyle(
                                        color: controller.bookingType.value == 1
                                            ? Colors.black
                                            : Colors.black38),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.changeBookingType(2);
                              },
                              child: AnimatedContainer(
                                padding: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border: controller.bookingType.value == 2
                                        ? Border(
                                            bottom: BorderSide(
                                                color: theme.primaryColor,
                                                width: 1.5),
                                          )
                                        : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Per Hour",
                                    presetFontSizes: const [16],
                                    style: TextStyle(
                                        color: controller.bookingType.value == 2
                                            ? Colors.black
                                            : Colors.black38),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (_, index) => BookingThumbnail(
                              accountBooking: false,
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
