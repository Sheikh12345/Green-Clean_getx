import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Home%20Module/View%20Model/home_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'amenities_one.dart';

class AmenitiesPage extends StatelessWidget {
  AmenitiesPage({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: height - MediaQuery.of(context).padding.top,
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
              title: "Amenities",
              enableBackButton: true,
              backButtonOnPressed: () => Get.back(),
              enableTrailingButton: false,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Obx(
                  () => Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
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
                                children: const [
                                  Text(
                                    "Glamourn 6BR@Midtown",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff0C93D0)),
                                    maxLines: 1,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "327 Northwest 39th Street",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff707070)),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    "Miami, Florida 33127",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff707070)),
                                    maxLines: 1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              )),
                          const Expanded(flex: 2, child: SizedBox())
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.all(0),
                          children: [
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.bed_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Expanded(
                                    flex: 3,
                                    child: Center(
                                      child: Text('Bedrooms',
                                          style: TextStyle(
                                            color: Color(0xff707070),
                                          )),
                                    )),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (homeController.bedrooms.value !=
                                                0) {
                                              homeController.bedrooms--;
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(homeController.bedrooms.toString()),
                                      IconButton(
                                          onPressed: () {
                                            homeController.bedrooms++;
                                          },
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.bathtub_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Flexible(
                                    flex: 3,
                                    child: Center(
                                      child: Text('Bathrooms',
                                          style: TextStyle(
                                            color: Color(0xff707070),
                                          )),
                                    )),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (homeController
                                                    .bathrooms.value !=
                                                0) {
                                              homeController.bathrooms--;
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(homeController.bathrooms.toString()),
                                      IconButton(
                                          onPressed: () {
                                            homeController.bathrooms++;
                                          },
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.living_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Flexible(
                                    flex: 3,
                                    child: Center(
                                      child: Text('Living Rooms',
                                          style: TextStyle(
                                            color: Color(0xff707070),
                                          )),
                                    )),
                                Flexible(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              if (homeController
                                                      .livingRooms.value !=
                                                  0) {
                                                homeController.livingRooms--;
                                              }
                                            },
                                            icon: const Icon(
                                                Icons.remove_circle)),
                                        Text(homeController.livingRooms
                                            .toString()),
                                        IconButton(
                                            onPressed: () {
                                              homeController.livingRooms++;
                                            },
                                            icon: const Icon(Icons.add_circle)),
                                      ],
                                    ))
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.dining_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Flexible(
                                    flex: 3,
                                    child: Center(
                                      child: Text('Dining Room',
                                          style: TextStyle(
                                            color: Color(0xff707070),
                                          )),
                                    )),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (homeController
                                                    .diningRooms.value !=
                                                0) {
                                              homeController.diningRooms--;
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(homeController.diningRooms
                                          .toString()),
                                      IconButton(
                                          onPressed: () {
                                            homeController.diningRooms++;
                                          },
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.countertops_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Flexible(
                                    flex: 3,
                                    child: Center(
                                      child: Text('Kitchen',
                                          style: TextStyle(
                                            color: Color(0xff707070),
                                          )),
                                    )),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (homeController.kitchen.value !=
                                                0) {
                                              homeController.kitchen--;
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(homeController.kitchen.toString()),
                                      IconButton(
                                          onPressed: () {
                                            homeController.kitchen++;
                                          },
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.outdoor_grill_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Flexible(
                                    flex: 3,
                                    child: Center(
                                      child: Text('Patio',
                                          style: TextStyle(
                                            color: Color(0xff707070),
                                          )),
                                    )),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (homeController.patio.value !=
                                                0) {
                                              homeController.patio--;
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(homeController.patio.toString()),
                                      IconButton(
                                          onPressed: () {
                                            homeController.patio++;
                                          },
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.kitchen_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Flexible(
                                    flex: 3,
                                    child: Center(
                                        child: Text('Fridge',
                                            style: TextStyle(
                                              color: Color(0xff707070),
                                            )))),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (homeController.fridge.value !=
                                                0) {
                                              homeController.fridge--;
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(homeController.fridge.toString()),
                                      IconButton(
                                          onPressed: () {
                                            homeController.fridge++;
                                          },
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.tv_outlined,
                                          size: 30,
                                        )
                                      ],
                                    )),
                                const Flexible(
                                    flex: 3,
                                    child: Center(
                                      child: Text(
                                        "TV's",
                                        style:
                                            TextStyle(color: Color(0xff707070)),
                                      ),
                                    )),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (homeController.tv.value != 0) {
                                              homeController.tv--;
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.remove_circle)),
                                      Text(homeController.tv.toString()),
                                      IconButton(
                                          onPressed: () {
                                            homeController.tv++;
                                          },
                                          icon: const Icon(Icons.add_circle)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 25,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => AmenitiesOnePage());
                              },
                              child: Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                      color: theme.primaryColor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Center(
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              height: 5,
                            )
                            //
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
