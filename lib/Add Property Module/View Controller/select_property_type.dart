import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View%20Controller/addproperty_page.dart';
import 'package:green_and_clean/Utils/widgets/category_thumbnail.dart';

import '../../Utils/widgets/appbar.dart';

class SelectPropertyTypePage extends StatelessWidget {
  const SelectPropertyTypePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: theme.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppBarView(
              title: "Add Property",
              enableBackButton: true,
              enableTrailingButton: false,
              backButtonOnPressed: () {
                Get.back();
              },
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
                        height: 30,
                      ),
                      const Text(
                        "Please select the type of property",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: CategoryThumbnail(
                                      image: "assets/images/vacation.png",
                                      halfWidth: true,
                                      title: "Vacation Rental",
                                      onPressed: () =>
                                          Get.to(() => AddPropertyPage()))),
                              const SizedBox(width: 10),
                              Expanded(
                                child: CategoryThumbnail(
                                    image: "assets/images/hotel.png",
                                    halfWidth: true,
                                    title: "Hotel",
                                    onPressed: () =>
                                        Get.to(() => AddPropertyPage())),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CategoryThumbnail(
                                    image: "assets/images/house.png",
                                    halfWidth: true,
                                    title: "House",
                                    onPressed: () =>
                                        Get.to(() => AddPropertyPage())),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: CategoryThumbnail(
                                    image: "assets/images/apartment.png",
                                    halfWidth: true,
                                    title: "Apartment",
                                    onPressed: () =>
                                        Get.to(() => AddPropertyPage())),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
