import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View%20Controller/select_property_type.dart';
import 'package:green_and_clean/Dashboard%20Module/View%20Controller/manage_offers.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../../Dashboard Module/View Model/dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  DashboardPage({Key? key}) : super(key: key);
  final dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dashboard",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff707070),
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Properties",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff707070)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: GestureDetector(
                                      onTap: () {
                                        pushNewScreen(
                                          context,
                                          screen: const ManageOffers(),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                        );
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(22),
                                            decoration: const BoxDecoration(
                                                color: Color(0xff117086),
                                                shape: BoxShape.circle),
                                            child: const Center(
                                              child: Text(
                                                "3",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Checking Out",
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff707070)),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(22),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffD31F1F),
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Waiting for Cleaning",
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff707070)),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(22),
                                          decoration: BoxDecoration(
                                              color: theme.primaryColor,
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Active Cleaning",
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff707070)),
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
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "What do you want to clean?",
                            style: TextStyle(color: Color(0xff707070)),
                          ),
                          const SizedBox(
                            height: 18,
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
                                        height: 80,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "House",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff707070)),
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
                                          height: 80,
                                          fit: BoxFit.cover),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Apartment",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff707070)),
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
                                          height: 80,
                                          fit: BoxFit.cover),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Vacation Rental",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff707070)),
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
                                        height: 80,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Hotel",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff707070)),
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
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: SizedBox(
                            width: width,
                            child: Obx(
                              () => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.changePropertyListType(0);
                                    },
                                    child: AnimatedContainer(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      decoration: BoxDecoration(
                                          border: controller.propertiesListType
                                                      .value ==
                                                  0
                                              ? Border(
                                                  bottom: BorderSide(
                                                      color: theme.primaryColor,
                                                      width: 1.5))
                                              : null),
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: Center(
                                        child: Text(
                                          "Properties",
                                          style: TextStyle(
                                              color: controller
                                                          .propertiesListType
                                                          .value ==
                                                      0
                                                  ? Colors.black
                                                  : const Color(0xff707070)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.changePropertyListType(1);
                                    },
                                    child: AnimatedContainer(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      decoration: BoxDecoration(
                                          border: controller.propertiesListType
                                                      .value ==
                                                  1
                                              ? Border(
                                                  bottom: BorderSide(
                                                      color: theme.primaryColor,
                                                      width: 1.5))
                                              : null),
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: Center(
                                        child: Text(
                                          "Active Cleaning",
                                          style: TextStyle(
                                              color: controller
                                                          .propertiesListType
                                                          .value ==
                                                      1
                                                  ? Colors.black
                                                  : const Color(0xff707070)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.changePropertyListType(2);
                                    },
                                    child: AnimatedContainer(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      decoration: BoxDecoration(
                                          border: controller.propertiesListType
                                                      .value ==
                                                  2
                                              ? Border(
                                                  bottom: BorderSide(
                                                      color: theme.primaryColor,
                                                      width: 1.5),
                                                )
                                              : null),
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: Center(
                                        child: Text(
                                          "Future Cleaning",
                                          style: TextStyle(
                                              color: controller
                                                          .propertiesListType
                                                          .value ==
                                                      2
                                                  ? Colors.black
                                                  : const Color(0xff707070)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))),
                SliverToBoxAdapter(
                  child: Obx(() => controller.propertiesListType.value == 0
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            onPressed: () {
                              Get.to(() => const SelectPropertyTypePage());
                            },
                            icon: const Icon(Icons.add_circle_outline),
                            label: const Text(
                              "Add Properties",
                              style: TextStyle(color: Color(0xff707070)),
                            ),
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
    final width = Get.width;
    final theme = Theme.of(context);
    return SliverList(
        delegate: SliverChildBuilderDelegate((_, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                  const Text(
                                    "Glamourn 6BR@Midtown",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff707070)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "327 Northwest 39th Street",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff707070)),
                                    maxLines: 1,
                                  ),
                                  const Text(
                                    "Miami, Florida 33127",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff707070)),
                                    maxLines: 1,
                                  ),
                                  const SizedBox(
                                    height: 15,
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
                                          children: const [
                                            Icon(
                                              Icons.restore,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Clean Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
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
                                          children: const [
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.calendar_today,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Schedule",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
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
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.bed),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('6')
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.bathtub),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('3')
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
