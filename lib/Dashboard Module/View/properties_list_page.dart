import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View/select_property_type.dart';
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
                                            style: TextStyle(fontSize: 10),
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
                                          style: TextStyle(fontSize: 10),
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
                                          style: TextStyle(fontSize: 10),
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
                          const Text("What do you want to clean?"),
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
                                    const Text(
                                      "House",
                                      style: TextStyle(fontSize: 12),
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
                                          "assets/images/apartment.png",
                                          height: width * 0.2,
                                          fit: BoxFit.cover),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Apartment",
                                      style: TextStyle(fontSize: 12),
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
                                          "assets/images/vacation.png",
                                          height: width * 0.2,
                                          fit: BoxFit.cover),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Vacation Rental",
                                      style: TextStyle(fontSize: 12),
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
                                        "assets/images/hotel.png",
                                        fit: BoxFit.cover,
                                        height: width * 0.2,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Hotel",
                                      style: TextStyle(fontSize: 12),
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
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                                            bottom: 5, top: 5),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: controller
                                                                .propertiesListType
                                                                .value ==
                                                            0
                                                        ? theme.primaryColor
                                                        : Colors.white,
                                                    width: 2))),
                                        duration:
                                            const Duration(milliseconds: 500),
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
                                        padding: const EdgeInsets.only(
                                            bottom: 5, top: 5),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: controller
                                                                .propertiesListType
                                                                .value ==
                                                            1
                                                        ? theme.primaryColor
                                                        : Colors.white,
                                                    width: 2))),
                                        duration:
                                            const Duration(milliseconds: 500),
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
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: controller
                                                                .propertiesListType
                                                                .value ==
                                                            2
                                                        ? theme.primaryColor
                                                        : Colors.white,
                                                    width: 2))),
                                        duration:
                                            const Duration(milliseconds: 500),
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
                ),
                SliverToBoxAdapter(
                  child: Obx(() => controller.propertiesListType.value == 0
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            onPressed: () {
                              Get.to(() => const SelectPropertyTypePage());
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
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            color: theme.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.restore,
                                              color: Colors.white,
                                              size: width * 0.05,
                                            ),
                                            const Text(
                                              "Clean Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Expanded(
                                          child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            color: theme.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.calendar_today,
                                              color: Colors.white,
                                              size: width * 0.05,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            const Text(
                                              "Schedule",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
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
