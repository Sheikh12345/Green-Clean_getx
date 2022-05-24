import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import '../../../Home Module/View Model/home_controller.dart';

class CleaningSchedulePage extends StatelessWidget {
  const CleaningSchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Container(
        height: height,
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
              title: "Green & Clean",
              enableBackButton: true,
              backButtonOnPressed: () {
                Get.find<HomeController>()
                    .setIndex(Get.find<HomeController>().homeStackIndex - 1);
              },
              enableTrailingButton: false,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              prefixIcon: const Icon(Icons.location_on_sharp,
                                  color: Colors.grey),
                              hintText: "Enter cleaning location",
                              suffixIcon: Icon(
                                Icons.location_searching,
                                color: Colors.blue.shade800,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.blue.shade800)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.blue.shade800))),
                        )),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const AutoSizeText(
                      "When would you like the service?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Expanded(
                              child: Center(
                                  child: GestureDetector(
                            onTap: () {
                              Get.find<HomeController>().scheduleType.value = 0;
                            },
                            child: Obx(() => Container(
                                  height: height * 0.1,
                                  width: height * 0.1,
                                  decoration: BoxDecoration(
                                      color: Get.find<HomeController>()
                                                  .scheduleType
                                                  .value ==
                                              0
                                          ? Colors.black
                                          : theme.primaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.handPointer,
                                        color: Colors.white,
                                        size: height * 0.05,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      const AutoSizeText(
                                        "Now",
                                        style: TextStyle(color: Colors.white),
                                        presetFontSizes: [18, 16, 14],
                                        minFontSize: 8,
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                )),
                          ))),
                          Expanded(
                              child: Center(
                                  child: GestureDetector(
                            onTap: () {
                              Get.find<HomeController>().scheduleType.value = 1;
                            },
                            child: Obx(() => Container(
                                  height: height * 0.1,
                                  width: height * 0.1,
                                  decoration: BoxDecoration(
                                      color: Get.find<HomeController>()
                                                  .scheduleType
                                                  .value ==
                                              1
                                          ? Colors.black
                                          : theme.primaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.calendarCheck,
                                        color: Colors.white,
                                        size: height * 0.05,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      const AutoSizeText(
                                        "Future",
                                        style: TextStyle(color: Colors.white),
                                        presetFontSizes: [18, 16, 14],
                                        minFontSize: 8,
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                )),
                          )))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    const AutoSizeText(
                      "How often do you want this service?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Expanded(
                              child: Center(
                            child: ServiceCard(
                                onPressed: () => Get.find<HomeController>()
                                    .setIndex(Get.find<HomeController>()
                                            .homeStackIndex +
                                        1),
                                child: Container(
                                  padding: EdgeInsets.all(height * 0.011),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white)),
                                  child: const Center(
                                    child: AutoSizeText(
                                      "1",
                                      style: TextStyle(color: Colors.white),
                                      presetFontSizes: [18, 16, 14],
                                    ),
                                  ),
                                ),
                                text: "One Time"),
                          )),
                          Expanded(
                              child: Center(
                            child: ServiceCard(
                                onPressed: () => Get.find<HomeController>()
                                    .setIndex(Get.find<HomeController>()
                                            .homeStackIndex +
                                        1),
                                icon: FontAwesomeIcons.calendarCheck,
                                text: "Every Week"),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Expanded(
                              child: Center(
                            child: ServiceCard(
                                onPressed: () => Get.find<HomeController>()
                                    .setIndex(Get.find<HomeController>()
                                            .homeStackIndex +
                                        1),
                                icon: FontAwesomeIcons.calendarCheck,
                                text: "Every 2 Weeks"),
                          )),
                          Expanded(
                              child: Center(
                            child: ServiceCard(
                                onPressed: () => Get.find<HomeController>()
                                    .setIndex(Get.find<HomeController>()
                                            .homeStackIndex +
                                        1),
                                icon: FontAwesomeIcons.calendarCheck,
                                text: "Every Month"),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard(
      {Key? key,
      this.backgroundColor,
      this.child,
      this.icon,
      required this.text,
      this.fontSizes,
      this.onPressed})
      : super(key: key);
  final Color? backgroundColor;
  final Widget? child;
  final IconData? icon;
  final List<double>? fontSizes;
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height * 0.1,
        width: height * 0.1,
        decoration: BoxDecoration(
            color: backgroundColor ?? theme.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child ??
                Icon(
                  icon,
                  color: Colors.white,
                  size: height * 0.06,
                ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 10),
              maxLines: 1,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
