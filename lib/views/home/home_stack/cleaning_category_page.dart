import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/controller/addproperty_controller.dart';
import 'package:green_and_clean/views/addproperty/views/vacationrental_page.dart';
import 'package:green_and_clean/views/home/home_controller.dart';

import '../../widgets/category_thumbnail.dart';

class CleaningCategoryPage extends StatelessWidget {
  const CleaningCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: width,
          height: height * 0.15,
          color: theme.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const AutoSizeText(
                "Green & Clean",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: height * 0.03,
              )
            ],
          ),
        ),
        Expanded(
            child: Padding(
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
                title: "Vacation Rental",
                onPressed: () => Get.to(() => VacationRentalPage(),
                    binding: BindingsBuilder(() {
                  Get.put(AddPropertyController());
                })),
              ),
              CategoryThumbnail(
                  title: "Hotel",
                  onPressed: () => Get.find<HomeController>()
                      .setIndex(Get.find<HomeController>().homeStackIndex + 1)),
              Row(
                children: [
                  Expanded(
                      child: CategoryThumbnail(
                    halfWidth: true,
                    title: "House",
                    onPressed: () => Get.find<HomeController>().setIndex(
                        Get.find<HomeController>().homeStackIndex + 1),
                  )),
                  Expanded(
                      child: CategoryThumbnail(
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
    );
  }
}
