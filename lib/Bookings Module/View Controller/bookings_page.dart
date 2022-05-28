import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Bookings%20Module/View%20Controller/booking_detail.dart';
import 'package:green_and_clean/Bookings%20Module/View%20Model/bookings_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/booking_thumbnail.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BookingsPage extends StatelessWidget {
  BookingsPage({Key? key}) : super(key: key);
  final bookingsController = Get.put(BookingsController());
  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 15),
                    width: width,
                    child: Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                bookingsController.changeBookingType(0);
                              },
                              child: AnimatedContainer(
                                padding:
                                    const EdgeInsets.only(bottom: 5, top: 5),
                                decoration: BoxDecoration(
                                    border:
                                        bookingsController.bookingType.value ==
                                                0
                                            ? Border(
                                                bottom: BorderSide(
                                                    color: theme.primaryColor,
                                                    width: 1.5))
                                            : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: Text(
                                    "Fixed",
                                    style: TextStyle(
                                        color: bookingsController
                                                    .bookingType.value ==
                                                0
                                            ? Colors.black
                                            : Colors.black38),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                bookingsController.changeBookingType(1);
                              },
                              child: AnimatedContainer(
                                padding: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border:
                                        bookingsController.bookingType.value ==
                                                1
                                            ? Border(
                                                bottom: BorderSide(
                                                    color: theme.primaryColor,
                                                    width: 1.5))
                                            : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: Text(
                                    "Offers",
                                    style: TextStyle(
                                        color: bookingsController
                                                    .bookingType.value ==
                                                1
                                            ? Colors.black
                                            : Colors.black38),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                bookingsController.changeBookingType(2);
                              },
                              child: AnimatedContainer(
                                padding: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    border:
                                        bookingsController.bookingType.value ==
                                                2
                                            ? Border(
                                                bottom: BorderSide(
                                                    color: theme.primaryColor,
                                                    width: 1.5),
                                              )
                                            : null),
                                duration: const Duration(milliseconds: 500),
                                child: Center(
                                  child: Text(
                                    "Per Hour",
                                    style: TextStyle(
                                        color: bookingsController
                                                    .bookingType.value ==
                                                2
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
                              accountBooking: false,
                              onPressed: () => pushNewScreen(
                                context,
                                screen: const BookingDetail(),
                                withNavBar:
                                    true, // OPTIONAL VALUE. True by default.
                                pageTransitionAnimation:
                                    PageTransitionAnimation.cupertino,
                              ),
                            )))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
