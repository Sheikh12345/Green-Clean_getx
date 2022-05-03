import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/addproperty/controller/addproperty_controller.dart';
import 'package:green_and_clean/views/addproperty/views/addproperty_page.dart';
import 'package:green_and_clean/views/home/home_controller.dart';

import '../../widgets/category_thumbnail.dart';

class VacationRentalPage extends GetView<AddPropertyController> {
  const VacationRentalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            height: height * 0.25,
            width: width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                    child: Image.asset("assets/images/house_bg.png")),
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
                    height: height * 0.06,
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
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.01),
              child: Container(
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
                                padding: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                controller.propertiesListType ==
                                                        0
                                                    ? theme.primaryColor
                                                    : Colors.white,
                                            width: 2))),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "My Properties",
                                    maxLines: 1,
                                    presetFontSizes: [16, 14, 12, 10, 8],
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
                                padding: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                controller.propertiesListType ==
                                                        1
                                                    ? theme.primaryColor
                                                    : Colors.white,
                                            width: 2))),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Active Cleaning",
                                    maxLines: 1,
                                    presetFontSizes: [16, 14, 12, 10, 8],
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
                                padding: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color:
                                                controller.propertiesListType ==
                                                        2
                                                    ? theme.primaryColor
                                                    : Colors.white,
                                            width: 2))),
                                duration: Duration(milliseconds: 500),
                                child: Center(
                                  child: AutoSizeText(
                                    "Future Cleaning",
                                    maxLines: 1,
                                    presetFontSizes: [16, 14, 12, 10, 8],
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
          Obx(() => controller.propertiesListType == 0
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton.icon(
                    onPressed: () => Get.to(() => AddPropertyPage()),
                    icon: Icon(Icons.add_circle_outline),
                    label: AutoSizeText("Add Properties"),
                    style: TextButton.styleFrom(primary: Colors.black),
                  ),
                )
              : SizedBox()),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (_, index) => Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: 10),
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
                                            child:
                                                Image.asset("assets/home.png"),
                                            flex: 2,
                                          ),
                                          Expanded(
                                              flex: 6,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText(
                                                    "Glamourn 6BR@Midtown",
                                                    presetFontSizes: [
                                                      14,
                                                      12,
                                                      10,
                                                      8
                                                    ],
                                                    maxLines: 1,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  AutoSizeText(
                                                    "327 Northwest 39th Street",
                                                    presetFontSizes: [
                                                      14,
                                                      12,
                                                      10,
                                                      8
                                                    ],
                                                    maxLines: 1,
                                                  ),
                                                  AutoSizeText(
                                                    "Miami, Florida 33127",
                                                    presetFontSizes: [
                                                      12,
                                                      10,
                                                      8
                                                    ],
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
                                        decoration: BoxDecoration(
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
                                              children: [
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
                                              children: [
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
      ),
    );
  }
}
