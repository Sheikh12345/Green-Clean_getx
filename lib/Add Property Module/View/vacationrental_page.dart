import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View/select_property_type.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';

import '../View Model/addproperty_controller.dart';

class VacationRentalPage extends GetView<AddPropertyController> {
  const VacationRentalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = AppConfig(context).height;
    final width = AppConfig(context).width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 220,
          width: width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                  child: Image.asset("assets/images/vacation_bg.png")),
              Positioned(
                  top: kToolbarHeight / 3,
                  left: 10,
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        FontAwesomeIcons.circleArrowLeft,
                        color: Colors.white,
                      ))),
              Positioned(
                child: Container(
                  height: 50,
                  color: Colors.black45,
                  child: const Center(
                      child: AutoSizeText(
                    "Vacation Rentals",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
                bottom: 0,
                left: 0,
                right: 0,
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              width: width,
              child: Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              controller.changePropertyListType(0);
                            },
                            child: AnimatedContainer(
                              padding: const EdgeInsets.only(bottom: 5, top: 5),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: controller.propertiesListType
                                                      .value ==
                                                  0
                                              ? theme.primaryColor
                                              : Colors.white,
                                          width: 2))),
                              duration: const Duration(milliseconds: 500),
                              child: const Center(
                                child: Text(
                                  "Properties",
                                  maxLines: 1,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            controller.changePropertyListType(1);
                          },
                          child: Center(
                            child: AnimatedContainer(
                              padding: const EdgeInsets.only(bottom: 5, top: 5),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: controller.propertiesListType
                                                      .value ==
                                                  1
                                              ? theme.primaryColor
                                              : Colors.white,
                                          width: 2))),
                              duration: const Duration(milliseconds: 500),
                              child: const Center(
                                child: Text(
                                  "Active Cleaning",
                                  maxLines: 1,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            controller.changePropertyListType(2);
                          },
                          child: Center(
                            child: AnimatedContainer(
                              padding: const EdgeInsets.only(
                                bottom: 5,
                                top: 5,
                              ),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: controller.propertiesListType
                                                      .value ==
                                                  2
                                              ? theme.primaryColor
                                              : Colors.white,
                                          width: 2))),
                              duration: const Duration(milliseconds: 500),
                              child: const Center(
                                child: Text(
                                  "Future Cleaning",
                                  maxLines: 1,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Obx(() => controller.propertiesListType.value == 0
            ? Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () => Get.to(() => const SelectPropertyTypePage()),
                  icon: const Icon(Icons.add_circle_outline),
                  label: const AutoSizeText("Add Properties"),
                  style: TextButton.styleFrom(primary: Colors.black),
                ),
              )
            : const SizedBox.shrink()),
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemBuilder: (_, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                              "assets/images/home.png"),
                                          flex: 2,
                                        ),
                                        Expanded(
                                            flex: 6,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const AutoSizeText(
                                                  "Glamourn 6BR@Midtown",
                                                  presetFontSizes: [
                                                    14,
                                                    12,
                                                    10,
                                                    8
                                                  ],
                                                  maxLines: 1,
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                const AutoSizeText(
                                                  "327 Northwest 39th Street",
                                                  presetFontSizes: [
                                                    14,
                                                    12,
                                                    10,
                                                    8
                                                  ],
                                                  maxLines: 1,
                                                ),
                                                const AutoSizeText(
                                                  "Miami, Florida 33127",
                                                  presetFontSizes: [12, 10, 8],
                                                  maxLines: 1,
                                                ),
                                                SizedBox(
                                                  height: height * 0.02,
                                                ),
                                              ],
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                                flex: 8,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                  color: Colors.grey))),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(Icons.bed),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              AutoSizeText('6')
                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(Icons.bathtub),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              AutoSizeText('3')
                                            ],
                                          )
                                        ],
                                      )))
                            ],
                          ),
                        ),
                      ),
                    )))
      ]),
    );
  }
}
