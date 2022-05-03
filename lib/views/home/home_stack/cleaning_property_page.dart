import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class CleaningPropertyPage extends StatelessWidget {
  const CleaningPropertyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: height * 0.25,
            width: width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                    child: Image.asset("assets/images/house_bg.png")),
                Positioned(
                    top: kToolbarHeight / 3,
                    left: 10,
                    child: IconButton(
                        onPressed: () {
                          Get.find<HomeController>().setIndex(
                              Get.find<HomeController>().homeStackIndex - 1);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.circleArrowLeft,
                          color: Colors.white,
                        ))),
                Positioned(
                  child: Container(
                    height: height * 0.06,
                    color: Colors.black45,
                    child: const Center(
                        child: AutoSizeText(
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
          SizedBox(
            height: height * 0.02,
          ),
          const AutoSizeText(
            "How many bedrooms?",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(
            height: height * 0.02,
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
                        AutoSizeText(
                            Get.find<HomeController>().bedrooms.toString()),
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
          SizedBox(
            height: height * 0.02,
          ),
          const AutoSizeText(
            "How many bathrooms?",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(
            height: height * 0.02,
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
                              if (Get.find<HomeController>().bathrooms.value !=
                                  0) {
                                Get.find<HomeController>().bathrooms--;
                              }
                            },
                            icon: const Icon(Icons.remove_circle)),
                        AutoSizeText(
                            Get.find<HomeController>().bathrooms.toString()),
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
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.06,
            color: Colors.black45,
            child: const Center(
                child: AutoSizeText(
              "Add - Ons",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          for (String addOn in Get.find<HomeController>().cleaningAddons)
            ListTile(
              leading: const FaIcon(FontAwesomeIcons.kitchenSet),
              title: AutoSizeText(addOn),
              trailing: Checkbox(
                value: false,
                onChanged: (val) {},
              ),
              dense: true,
            ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: GestureDetector(
              onTap: () {
                Get.find<HomeController>()
                    .setIndex(Get.find<HomeController>().homeStackIndex + 1);
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
                          child: AutoSizeText("Next"),
                        )),
                    Expanded(child: Icon(Icons.arrow_forward_ios_rounded))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
        ],
      ),
    );
  }
}
