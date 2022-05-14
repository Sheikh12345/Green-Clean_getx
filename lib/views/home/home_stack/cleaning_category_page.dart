import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/controller/addproperty_controller.dart';
import 'package:green_and_clean/views/addproperty/views/vacationrental_page.dart';
import 'package:green_and_clean/views/home/home_controller.dart';
import 'package:green_and_clean/views/widgets/appbar.dart';

import '../../widgets/category_thumbnail.dart';

class CleaningCategoryPage extends StatelessWidget {
  const CleaningCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      color: theme.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBarView(
            title: "Green & Clean",
            enableBackButton: false,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                const AutoSizeText(
                  "Please select a cleaning category",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CategoryThumbnail(
                  image: "assets/images/vacation.png",
                  title: "Vacation Rental",
                  onPressed: () => Get.to(() => VacationRentalPage(),
                      binding: BindingsBuilder(() {
                    Get.put(AddPropertyController());
                  })),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                CategoryThumbnail(
                    image: "assets/images/hotel.png",
                    title: "Hotel",
                    onPressed: () => Get.find<HomeController>().setIndex(
                        Get.find<HomeController>().homeStackIndex + 1)),
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CategoryThumbnail(
                      image: "assets/images/house.png",
                      halfWidth: true,
                      title: "House",
                      onPressed: () => Get.find<HomeController>().setIndex(
                          Get.find<HomeController>().homeStackIndex + 1),
                    )),
                    Expanded(
                        child: CategoryThumbnail(
                      image: "assets/images/apartment.png",
                      halfWidth: true,
                      title: "Apartment",
                      onPressed: () => Get.find<HomeController>().setIndex(
                          Get.find<HomeController>().homeStackIndex + 1),
                    ))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
