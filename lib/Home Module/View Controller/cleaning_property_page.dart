import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../Home Module/View Model/home_controller.dart';

class CleaningPropertyPage extends StatelessWidget {
  const CleaningPropertyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 190,
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
                    height: 40,
                    color: Colors.black45,
                    child: const Center(
                        child: Text(
                      "House",
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
          const SizedBox(
            height: 15,
          ),
          const Text(
            "How many bedrooms?",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
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
            height: 15,
          ),
          const Text(
            "How many bathrooms?",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
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
            height: 15,
          ),
          Container(
            height: 40,
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
            leading: const Icon(Icons.kitchen_outlined),
            title: const Text("Fridge"),
            trailing: Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.microwave_outlined),
            title: const Text("Microwave"),
            trailing: Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.inventory_2_outlined),
            title: const Text("Cabinets"),
            trailing: Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.iron_outlined),
            title: const Text("Ironing"),
            trailing: Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.local_laundry_service_outlined),
            title: const Text("Washing"),
            trailing: Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.dry_cleaning_outlined),
            title: const Text("Drying"),
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
    );
  }
}
