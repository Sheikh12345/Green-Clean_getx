import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View/addproperty_controller.dart';
import 'package:green_and_clean/Add%20Property%20Module/View/vacationrental_page.dart';
import 'package:green_and_clean/Home%20Module/View%20Model/home_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/category_thumbnail.dart';

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
          const AppBarView(
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
                  onPressed: () => Get.to(() => const VacationRentalPage(),
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
