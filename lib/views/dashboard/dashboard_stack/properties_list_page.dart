import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard_controller.dart';

class PropertiesListPage extends GetView<DashboardController> {
  const PropertiesListPage({Key? key}) : super(key: key);

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
          Center(
            child: AutoSizeText(
              "Green & Clean",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
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
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          "Dashboard",
                          presetFontSizes: [22, 20],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Card(
                          elevation: 8,
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  "Properties",
                                  presetFontSizes: [22, 20],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(width * 0.07),
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: AutoSizeText(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white),
                                              presetFontSizes: [22],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        AutoSizeText("Checking Out")
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(width * 0.07),
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: AutoSizeText(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white),
                                              presetFontSizes: [22],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        AutoSizeText("Waiting for Cleaning")
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(width * 0.07),
                                          decoration: BoxDecoration(
                                              color: theme.primaryColor,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: AutoSizeText(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white),
                                              presetFontSizes: [22],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        AutoSizeText("Active Cleaning")
                                      ],
                                    ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText("What do you want to clean?"),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/home.jpeg",
                                        fit: BoxFit.cover,
                                        height: width * 0.2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      "House",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset("assets/home.jpeg",
                                          height: width * 0.2,
                                          fit: BoxFit.cover),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      "Apartment",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset("assets/home.jpeg",
                                          height: width * 0.2,
                                          fit: BoxFit.cover),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      "Vacation Rental",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/home.jpeg",
                                        fit: BoxFit.cover,
                                        height: width * 0.2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      "Hotel",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.01),
                      child: Container(
                        width: width,
                        child: Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.changePropertyListType(0);
                                  },
                                  child: AnimatedContainer(
                                    padding: EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: controller
                                                            .propertiesListType ==
                                                        0
                                                    ? theme.primaryColor
                                                    : Colors.white,
                                                width: 2))),
                                    duration: Duration(milliseconds: 500),
                                    child: Center(
                                      child: AutoSizeText(
                                        "My Properties",
                                        presetFontSizes: [16],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.changePropertyListType(1);
                                  },
                                  child: AnimatedContainer(
                                    padding: EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: controller
                                                            .propertiesListType ==
                                                        1
                                                    ? theme.primaryColor
                                                    : Colors.white,
                                                width: 2))),
                                    duration: Duration(milliseconds: 500),
                                    child: Center(
                                      child: AutoSizeText(
                                        "Active Cleaning",
                                        presetFontSizes: [16],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.changePropertyListType(2);
                                  },
                                  child: AnimatedContainer(
                                    padding: EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: controller
                                                            .propertiesListType ==
                                                        2
                                                    ? theme.primaryColor
                                                    : Colors.white,
                                                width: 2))),
                                    duration: Duration(milliseconds: 500),
                                    child: Center(
                                      child: AutoSizeText(
                                        "Future Cleaning",
                                        presetFontSizes: [16],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Obx(() => controller.propertiesListType == 0
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outline),
                            label: AutoSizeText("Add Properties"),
                            style: TextButton.styleFrom(primary: Colors.black),
                          ),
                        )
                      : SizedBox()),
                ),
                MyProperties()
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class MyProperties extends StatelessWidget {
  const MyProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SliverList(
        delegate: SliverChildBuilderDelegate((_, index) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 10),
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
                            child: Icon(Icons.home_filled),
                            flex: 2,
                          ),
                          Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "Glamourn 6BR@Midtown",
                                    presetFontSizes: [16],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  AutoSizeText(
                                    "327 Northwest 39th Street",
                                  ),
                                  AutoSizeText(
                                    "Miami, Florida 33127",
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: theme.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            Flexible(
                                                child: Icon(
                                              Icons.restore,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                            Expanded(
                                                child: AutoSizeText(
                                              "Clean Now",
                                              minFontSize: 6,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))
                                          ],
                                        ),
                                      )),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: theme.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Flexible(
                                                child: Icon(
                                              Icons.calendar_today,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Expanded(
                                                child: AutoSizeText(
                                              "Schedule",
                                              maxLines: 1,
                                              minFontSize: 6,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ],
                                        ),
                                      )),
                                      SizedBox(
                                        width: 3,
                                      )
                                    ],
                                  )
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
                        height: height * 0.1,
                        decoration: BoxDecoration(
                            border:
                                Border(left: BorderSide(color: Colors.grey))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
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
      );
    }, childCount: 10));
  }
}
