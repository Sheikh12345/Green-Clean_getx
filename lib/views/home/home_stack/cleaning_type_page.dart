import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/home/home_controller.dart';

import '../../widgets/category_thumbnail.dart';

class CleaningTypePage extends StatelessWidget {
  const CleaningTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Column(children: [
      Container(
        height: height * 0.25,
        width: width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(child: Image.asset("assets/images/house_bg.png")),
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
        "Please select type of cleaning",
        style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Row(
          children: [
            Expanded(
                child: CategoryThumbnail(
              image: "assets/images/standard.png",
              halfWidth: true,
              title: "Standard Cleaning",
              onPressed: () => Get.find<HomeController>()
                  .setIndex(Get.find<HomeController>().homeStackIndex + 1),
            )),
            Expanded(
                child: CategoryThumbnail(
              image: "assets/images/deep.png",
              halfWidth: true,
              title: "Deep Cleaning",
              onPressed: () => Get.find<HomeController>()
                  .setIndex(Get.find<HomeController>().homeStackIndex + 1),
            ))
          ],
        ),
      )
    ]);
  }
}
