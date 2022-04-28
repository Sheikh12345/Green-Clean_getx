import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/dashboard/dashboard_controller.dart';
import 'package:green_and_clean/views/widgets/booking_thumbnail.dart';

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
          const SizedBox(
            height: kToolbarHeight / 2,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.find<DashboardController>().setIndex(
                        Get.find<DashboardController>().dashboardStackIndex -
                            1);
                  },
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  )),
              const Expanded(
                child: SizedBox(),
                flex: 2,
              ),
              const AutoSizeText(
                "Manage Offers",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Expanded(
                child: SizedBox(),
                flex: 3,
              )
            ],
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
            child: ListView.builder(
                itemBuilder: (_, index) => BookingThumbnail(onPressed: () {})),
          ))
        ],
      ),
    );
  }
}
