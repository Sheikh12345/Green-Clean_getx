import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Dashboard%20Module/View%20Model/dashboard_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/booking_thumbnail.dart';

class ManageOffers extends StatelessWidget {
  const ManageOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          AppBarView(
              title: "Manage Offers",
              enableBackButton: true,
              backButtonOnPressed: () {
                Get.find<DashboardController>().setIndex(
                    Get.find<DashboardController>().dashboardStackIndex - 1);
              },
              enableTrailingButton: false),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(top: 2),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemBuilder: (_, index) =>
                    BookingThumbnail(accountBooking: false, onPressed: () {})),
          ))
        ],
      ),
    );
  }
}
