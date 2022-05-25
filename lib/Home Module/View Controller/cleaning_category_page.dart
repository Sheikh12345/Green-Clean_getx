import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View%20Controller/vacationrental_page.dart';
import 'package:green_and_clean/Add%20Property%20Module/View%20Model/addproperty_controller.dart';
import 'package:green_and_clean/Home%20Module/View%20Model/home_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:green_and_clean/Utils/widgets/category_thumbnail.dart';

class CleaningCategoryPage extends StatelessWidget {
  const CleaningCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      width: width,
      color: theme.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const AppBarView(
            title: "Green & Clean",
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
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    "Please select a cleaning category",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  CategoryThumbnail(
                    image: "assets/images/vacation.png",
                    title: "Vacation Rental",
                    onPressed: () => Get.to(() => const VacationRentalPage(),
                        binding: BindingsBuilder(() {
                      Get.put(AddPropertyController());
                    })),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CategoryThumbnail(
                      image: "assets/images/hotel.png",
                      title: "Hotel",
                      onPressed: () => Get.find<HomeController>().setIndex(
                          Get.find<HomeController>().homeStackIndex + 1)),
                  const SizedBox(
                    height: 15,
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
            ),
          ))
        ],
      ),
    );
  }
}
