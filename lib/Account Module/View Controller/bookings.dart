import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Account%20Module/View%20Model/account_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/booking_thumbnail.dart';

class BookingsPage extends StatelessWidget {
  BookingsPage({Key? key}) : super(key: key);
  final controller = Get.put(AccountController());
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          AppBarView(
            title: "Bookings",
            enableBackButton: true,
            backButtonOnPressed: () => Get.find<AccountController>()
                .setIndex(Get.find<AccountController>().accountStackIndex - 2),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 15),
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
                                                width: 2))
                                        : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: Text(
                                    "Accepted",
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
                                                width: 2))
                                        : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: Text(
                                    "In Progress",
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
                                                width: 2))
                                        : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: Text(
                                    "Completed",
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
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (_, index) => BookingThumbnail(
                      accountBooking: true,
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
