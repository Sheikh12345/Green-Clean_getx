import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Home%20Module/View%20Controller/cleaners_list.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../../Home Module/View Model/home_controller.dart';

class CleaningSchedulePage extends StatelessWidget {
  const CleaningSchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.primaryColor,
        child: Column(
          children: [
            AppBarView(
              title: "Green & Clean",
              enableBackButton: true,
              backButtonOnPressed: () {
                Navigator.pop(context);
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.05),
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
                                    borderSide: BorderSide(
                                        color: Colors.blue.shade800)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Colors.blue.shade800))),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "When would you like the service?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            Expanded(
                                child: Center(
                                    child: GestureDetector(
                              onTap: () {
                                Get.find<HomeController>().scheduleType.value =
                                    0;
                              },
                              child: Obx(() => Container(
                                    height: 80,
                                    width: width * 0.22,
                                    decoration: BoxDecoration(
                                        color: Get.find<HomeController>()
                                                    .scheduleType
                                                    .value ==
                                                0
                                            ? Colors.black
                                            : theme.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          FontAwesomeIcons.handPointer,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
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
                                Get.find<HomeController>().scheduleType.value =
                                    1;
                              },
                              child: Obx(() => Container(
                                    height: 80,
                                    width: width * 0.22,
                                    decoration: BoxDecoration(
                                        color: Get.find<HomeController>()
                                                    .scheduleType
                                                    .value ==
                                                1
                                            ? Colors.black
                                            : theme.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          FontAwesomeIcons.calendarCheck,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Future",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
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
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "How often do you want this service?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            Expanded(
                                child: Center(
                              child: ServiceCard(
                                  onPressed: () => pushNewScreen(
                                        context,
                                        screen: const CleanersList(),
                                        withNavBar:
                                            true, // OPTIONAL VALUE. True by default.
                                        pageTransitionAnimation:
                                            PageTransitionAnimation.cupertino,
                                      ),
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: const Center(
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  text: "One Time"),
                            )),
                            Expanded(
                                child: Center(
                              child: ServiceCard(
                                  onPressed: () => pushNewScreen(
                                        context,
                                        screen: const CleanersList(),
                                        withNavBar:
                                            true, // OPTIONAL VALUE. True by default.
                                        pageTransitionAnimation:
                                            PageTransitionAnimation.cupertino,
                                      ),
                                  icon: FontAwesomeIcons.calendarCheck,
                                  text: "Every Week"),
                            ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            Expanded(
                                child: Center(
                              child: ServiceCard(
                                  onPressed: () => pushNewScreen(
                                        context,
                                        screen: const CleanersList(),
                                        withNavBar:
                                            true, // OPTIONAL VALUE. True by default.
                                        pageTransitionAnimation:
                                            PageTransitionAnimation.cupertino,
                                      ),
                                  icon: FontAwesomeIcons.calendarCheck,
                                  text: "Every 2 Weeks"),
                            )),
                            Expanded(
                                child: Center(
                              child: ServiceCard(
                                  onPressed: () => pushNewScreen(
                                        context,
                                        screen: const CleanersList(),
                                        withNavBar:
                                            true, // OPTIONAL VALUE. True by default.
                                        pageTransitionAnimation:
                                            PageTransitionAnimation.cupertino,
                                      ),
                                  icon: FontAwesomeIcons.calendarCheck,
                                  text: "Every Month"),
                            ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
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
    final width = Get.width;
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 80,
        width: width * 0.22,
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
                  size: 40,
                ),
            const SizedBox(
              height: 10,
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
