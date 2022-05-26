import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../View Model/home_controller.dart';
import 'cleaning_schedule_page.dart';

class CleaningPropertyPage extends StatelessWidget {
  const CleaningPropertyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 234,
              width: width,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                      child: Image.asset(
                    "assets/images/house_bg.png",
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
                          ))),
                  Positioned(
                    child: Container(
                      height: 46,
                      color: Colors.black45,
                      child: const Center(
                          child: Text(
                        "House",
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
            const SizedBox(
              height: 22,
            ),
            const Text(
              "How many bedrooms?",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 27,
            ),
            Row(
              children: [
                const Expanded(
                    child: Icon(
                  Icons.bed,
                  size: 30,
                )),
                Expanded(
                  flex: 2,
                  child: Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {
                                if (Get.find<HomeController>().bedrooms.value !=
                                    0) {
                                  Get.find<HomeController>().bedrooms--;
                                }
                              },
                              icon: const Icon(Icons.remove_circle)),
                          Text(Get.find<HomeController>().bedrooms.toString()),
                          IconButton(
                              onPressed: () {
                                Get.find<HomeController>().bedrooms++;
                              },
                              icon: const Icon(Icons.add_circle)),
                        ],
                      )),
                ),
                const Expanded(child: SizedBox())
              ],
            ),
            const SizedBox(
              height: 31,
            ),
            const Text(
              "How many bathrooms?",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 31,
            ),
            Row(
              children: [
                const Expanded(
                    child: Icon(
                  Icons.bathtub_outlined,
                  size: 30,
                )),
                Expanded(
                  flex: 2,
                  child: Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {
                                if (Get.find<HomeController>()
                                        .bathrooms
                                        .value !=
                                    0) {
                                  Get.find<HomeController>().bathrooms--;
                                }
                              },
                              icon: const Icon(Icons.remove_circle)),
                          Text(Get.find<HomeController>().bathrooms.toString()),
                          IconButton(
                              onPressed: () {
                                Get.find<HomeController>().bathrooms++;
                              },
                              icon: const Icon(Icons.add_circle)),
                        ],
                      )),
                ),
                const Expanded(child: SizedBox())
              ],
            ),
            const SizedBox(
              height: 31,
            ),
            Container(
              height: 36,
              color: Colors.black45,
              child: const Center(
                  child: Text(
                "Add - Ons",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              leading: const Icon(
                Icons.kitchen_outlined,
                size: 28,
              ),
              title: const Text("Fridge", style: TextStyle(fontSize: 14)),
              trailing: Checkbox(
                value: false,
                onChanged: (val) {},
              ),
              dense: true,
            ),
            ListTile(
              leading: const Icon(
                Icons.microwave_outlined,
                size: 28,
              ),
              title: const Text("Microwave", style: TextStyle(fontSize: 14)),
              trailing: Checkbox(
                value: false,
                onChanged: (val) {},
              ),
              dense: true,
            ),
            ListTile(
              leading: const Icon(Icons.inventory_2_outlined, size: 28),
              title: const Text("Cabinets", style: TextStyle(fontSize: 14)),
              trailing: Checkbox(
                value: false,
                onChanged: (val) {},
              ),
              dense: true,
            ),
            ListTile(
              leading: const Icon(Icons.iron_outlined, size: 28),
              title: const Text("Ironing", style: TextStyle(fontSize: 14)),
              trailing: Checkbox(
                value: false,
                onChanged: (val) {},
              ),
              dense: true,
            ),
            ListTile(
              leading:
                  const Icon(Icons.local_laundry_service_outlined, size: 30),
              title: const Text("Washing", style: TextStyle(fontSize: 14)),
              trailing: Checkbox(
                value: false,
                onChanged: (val) {},
              ),
              dense: true,
            ),
            ListTile(
              leading: const Icon(Icons.dry_cleaning_outlined, size: 28),
              title: const Text(
                "Drying",
                style: TextStyle(fontSize: 14),
              ),
              trailing: Checkbox(
                value: false,
                onChanged: (val) {},
              ),
              dense: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: GestureDetector(
                onTap: () {
                  pushNewScreen(
                    context,
                    screen: const CleaningSchedulePage(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: const [
                      Expanded(child: SizedBox()),
                      Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(fontSize: 16),
                            ),
                          )),
                      Expanded(child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
