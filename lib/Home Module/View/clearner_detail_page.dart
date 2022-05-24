import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Home%20Module/View%20Model/home_controller.dart';

class CleanerDetailPage extends StatelessWidget {
  const CleanerDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: height * 0.25,
            width: width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                    child: Image.asset(
                  "assets/images/cleaning_bg.png",
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
                    height: height * 0.06,
                    color: Colors.black45,
                    child: const Center(
                        child: Text(
                      "Available HouseKeepers",
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        right: BorderSide(
                                            color: Colors.grey[300]!))),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Material(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.asset(
                                            "assets/images/person.png",
                                            width: width * 0.18,
                                          )),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text("4.0"),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 14,
                                        ),
                                        Text("(125)")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      children: const [
                                        Text(
                                          "Mayra Q.",
                                        ),
                                        Text(
                                          "Miami, Florida",
                                        ),
                                      ],
                                    )),
                                    Icon(
                                      Icons.forum_sharp,
                                      color: theme.primaryColor,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Center(
                                  child: Text(
                                    "House/Standard Cleaning",
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.location_on_sharp,
                                      size: 14,
                                    ),
                                    Text("3.3 Mi")
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Center(
                                  child: Text("English/Spanish"),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Text(
                      "Please select your prefered pricing option",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Get.find<HomeController>().setIndex(
                          Get.find<HomeController>().homeStackIndex + 1),
                      child: Container(
                        width: width,
                        height: height * 0.075,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: theme.primaryColor),
                        child: const Center(
                          child: Text(
                            "\$60.00/Total",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    GestureDetector(
                      onTap: () => Get.find<HomeController>().setIndex(
                          Get.find<HomeController>().homeStackIndex + 1),
                      child: Container(
                        width: width,
                        height: height * 0.075,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue),
                        child: const Center(
                          child: Text(
                            "\$20.00/Hour",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    GestureDetector(
                      onTap: () => Get.find<HomeController>().setIndex(
                          Get.find<HomeController>().homeStackIndex + 1),
                      child: Container(
                        width: width,
                        height: height * 0.075,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54),
                        child: const Center(
                          child: Text(
                            "Make Offer",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
