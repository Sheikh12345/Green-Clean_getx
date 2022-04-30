import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

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
            const SizedBox(
              height: kToolbarHeight / 2,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.find<HomeController>().setIndex(
                          Get.find<HomeController>().homeStackIndex - 1);
                    },
                    icon: const Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    )),
                const Expanded(
                  child: SizedBox(),
                  flex: 2,
                ),
                const AutoSizeText(
                  "Green & Clean",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Expanded(
                  child: SizedBox(),
                  flex: 3,
                )
              ],
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
                              suffixIcon: const Icon(Icons.location_searching),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: theme.primaryColor))),
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
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                      child: Row(
                        children: [
                          Expanded(
                              child: Center(
                            child: ServiceCard(
                                onPressed: () => Get.find<HomeController>()
                                    .setIndex(Get.find<HomeController>()
                                            .homeStackIndex +
                                        1),
                                icon: FontAwesomeIcons.handPointer,
                                text: "Now"),
                          )),
                          Expanded(
                              child: Center(
                            child: ServiceCard(
                                onPressed: () => Get.find<HomeController>()
                                    .setIndex(Get.find<HomeController>()
                                            .homeStackIndex +
                                        1),
                                icon: FontAwesomeIcons.calendarCheck,
                                text: "Future"),
                          ))
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
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
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
                                  padding: const EdgeInsets.all(5),
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
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
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
      this.onPressed})
      : super(key: key);
  final Color? backgroundColor;
  final Widget? child;
  final IconData? icon;
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
        height: width * 0.25,
        width: width * 0.25,
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
                  size: width * 0.09,
                ),
            SizedBox(
              height: height * 0.01,
            ),
            AutoSizeText(
              text,
              style: const TextStyle(color: Colors.white),
              presetFontSizes: const [14, 12, 10, 8],
              minFontSize: 8,
              maxLines: 1,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
