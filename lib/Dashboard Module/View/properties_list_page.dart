import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View/addproperty_page.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import '../../../Dashboard Module/View Model/dashboard_controller.dart';

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
          const AppBarView(title: "Green & Clean", enableBackButton: false),
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
                        const AutoSizeText(
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
                                const AutoSizeText(
                                  "Properties",
                                  presetFontSizes: [22, 20],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: GestureDetector(
                                      onTap: () {
                                        Get.find<DashboardController>()
                                            .setIndex(
                                                Get.find<DashboardController>()
                                                        .dashboardStackIndex +
                                                    1);
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.all(height * 0.025),
                                            decoration: const BoxDecoration(
                                                color: Colors.blueGrey,
                                                shape: BoxShape.circle),
                                            child: const Center(
                                              child: AutoSizeText(
                                                "3",
                                                style: TextStyle(
                                                    color: Colors.white),
                                                presetFontSizes: [22, 20, 18],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Checking Out",
                                            maxLines: 1,
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.all(height * 0.025),
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: AutoSizeText(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white),
                                              presetFontSizes: [22],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Waiting for Cleaning",
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.all(height * 0.025),
                                          decoration: BoxDecoration(
                                              color: theme.primaryColor,
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: AutoSizeText(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white),
                                              presetFontSizes: [22],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Active Cleaning",
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                        )
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
                          const AutoSizeText("What do you want to clean?"),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/images/home.jpeg",
                                        fit: BoxFit.cover,
                                        height: width * 0.2,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const AutoSizeText(
                                      "House",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                          "assets/images/home.jpeg",
                                          height: width * 0.2,
                                          fit: BoxFit.cover),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const AutoSizeText(
                                      "Apartment",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                          "assets/images/home.jpeg",
                                          height: width * 0.2,
                                          fit: BoxFit.cover),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const AutoSizeText(
                                      "Vacation Rental",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/images/home.jpeg",
                                        fit: BoxFit.cover,
                                        height: width * 0.2,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const AutoSizeText(
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
                                        padding: const EdgeInsets.only(
                                          bottom: 5,
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: controller
                                                                .propertiesListType ==
                                                            0
                                                        ? theme.primaryColor
                                                        : Colors.white,
                                                    width: 2))),
                                        duration:
                                            const Duration(milliseconds: 500),
                                        child: const Center(
                                          child: AutoSizeText(
                                            "My Properties",
                                            maxLines: 1,
                                            presetFontSizes: [
                                              16,
                                              14,
                                              12,
                                              10,
                                              8
                                            ],
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
                                        padding: const EdgeInsets.only(
                                          bottom: 5,
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: controller
                                                                .propertiesListType ==
                                                            1
                                                        ? theme.primaryColor
                                                        : Colors.white,
                                                    width: 2))),
                                        duration:
                                            const Duration(milliseconds: 500),
                                        child: const Center(
                                          child: AutoSizeText(
                                            "Active Cleaning",
                                            maxLines: 1,
                                            presetFontSizes: [
                                              16,
                                              14,
                                              12,
                                              10,
                                              8
                                            ],
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
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: controller
                                                                .propertiesListType ==
                                                            2
                                                        ? theme.primaryColor
                                                        : Colors.white,
                                                    width: 2))),
                                        duration:
                                            const Duration(milliseconds: 500),
                                        child: const Center(
                                          child: AutoSizeText(
                                            "Future Cleaning",
                                            maxLines: 1,
                                            presetFontSizes: [
                                              16,
                                              14,
                                              12,
                                              10,
                                              8
                                            ],
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
                ),
                SliverToBoxAdapter(
                  child: Obx(() => controller.propertiesListType == 0
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            onPressed: () {
                              Get.to(() => const AddPropertyPage());
                            },
                            icon: const Icon(Icons.add_circle_outline),
                            label: const AutoSizeText("Add Properties"),
                            style: TextButton.styleFrom(primary: Colors.black),
                          ),
                        )
                      : const SizedBox()),
                ),
                const MyProperties()
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
                            child: Image.asset("assets/images/home.png"),
                            flex: 2,
                          ),
                          Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const AutoSizeText(
                                    "Glamourn 6BR@Midtown",
                                    presetFontSizes: [14, 12, 10, 8],
                                    maxLines: 1,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const AutoSizeText(
                                    "327 Northwest 39th Street",
                                    presetFontSizes: [14, 12, 10, 8],
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
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.all(width * 0.01),
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
                                              size: width * 0.05,
                                            )),
                                            const Expanded(
                                                child: AutoSizeText(
                                              "Clean Now",
                                              minFontSize: 10,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))
                                          ],
                                        ),
                                      )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.all(width * 0.01),
                                        decoration: BoxDecoration(
                                            color: theme.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Flexible(
                                                child: Icon(
                                              Icons.calendar_today,
                                              color: Colors.white,
                                              size: width * 0.05,
                                            )),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            const Expanded(
                                                child: AutoSizeText(
                                              "Schedule",
                                              maxLines: 1,
                                              minFontSize: 10,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ],
                                        ),
                                      )),
                                      const SizedBox(
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
                        decoration: const BoxDecoration(
                            border:
                                Border(left: BorderSide(color: Colors.grey))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
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
      );
    }, childCount: 10));
  }
}
