import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View%20Controller/select_property_type.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';

import '../View Model/addproperty_controller.dart';

class VacationRentalPage extends GetView<AddPropertyController> {
  VacationRentalPage({Key? key}) : super(key: key);
  final addPropertyController = Get.put(AddPropertyController());
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
                  child: Image.asset(
                "assets/images/vacation_bg.png",
                fit: BoxFit.fill,
              )),
              Positioned(
                  top: 5 + kToolbarHeight / 3,
                  left: 10,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.circleArrowLeft,
                        color: Colors.white,
                        size: 20,
                      ))),
              Positioned(
                child: Container(
                  height: 50,
                  color: Colors.black45,
                  child: const Center(
                      child: Text(
                    "Vacation Rentals",
                    style: TextStyle(color: Colors.white, fontSize: 18),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                width: width,
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.changePropertyListType(0);
                        },
                        child: AnimatedContainer(
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                              border: controller.propertiesListType.value == 0
                                  ? Border(
                                      bottom: BorderSide(
                                          color: theme.primaryColor,
                                          width: 1.5))
                                  : null),
                          duration: const Duration(milliseconds: 500),
                          child: Center(
                            child: Text(
                              "Properties",
                              style: TextStyle(
                                  color:
                                      controller.propertiesListType.value == 0
                                          ? Colors.black
                                          : Colors.black38),
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
                              border: controller.propertiesListType.value == 1
                                  ? Border(
                                      bottom: BorderSide(
                                          color: theme.primaryColor,
                                          width: 1.5))
                                  : null),
                          duration: const Duration(milliseconds: 500),
                          child: Center(
                            child: Text(
                              "Active Cleaning",
                              style: TextStyle(
                                  color:
                                      controller.propertiesListType.value == 1
                                          ? Colors.black
                                          : Colors.black38),
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
                              border: controller.propertiesListType.value == 2
                                  ? Border(
                                      bottom: BorderSide(
                                          color: theme.primaryColor,
                                          width: 1.5),
                                    )
                                  : null),
                          duration: const Duration(milliseconds: 500),
                          child: Center(
                            child: Text(
                              "Future Cleaning",
                              style: TextStyle(
                                  color:
                                      controller.propertiesListType.value == 2
                                          ? Colors.black
                                          : Colors.black38),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
        const SizedBox(
          height: 5,
        ),
        Obx(() => controller.propertiesListType.value == 0
            ? Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () => Get.to(() => const SelectPropertyTypePage()),
                  icon: const Icon(Icons.add_circle_outline),
                  label: const Text(
                    "Add Properties",
                    style: TextStyle(color: Color(0xff707070)),
                  ),
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
                                                const Text(
                                                  "Glamourn 6BR@Midtown",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xff707070)),
                                                  maxLines: 1,
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                const Text(
                                                  "327 Northwest 39th Street",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xff707070)),
                                                  maxLines: 1,
                                                ),
                                                const Text(
                                                  "Miami, Florida 33127",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xff707070)),
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
                                              Text('6')
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
                                              Text('3')
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
