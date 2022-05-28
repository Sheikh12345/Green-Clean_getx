import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Home%20Module/View%20Controller/cleaning_property_page.dart';
import 'package:green_and_clean/Home%20Module/View%20Model/home_controller.dart';
import 'package:green_and_clean/Utils/widgets/category_thumbnail.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CleaningTypePage extends StatelessWidget {
  CleaningTypePage({Key? key, required this.imageURL, required this.text})
      : super(key: key);
  final String imageURL;
  final String text;
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 234,
          width: width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                  child: Image.asset(
                imageURL,
                fit: BoxFit.cover,
              )),
              Positioned(
                top: 5 + kToolbarHeight / 3,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.circleArrowLeft,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  height: 46,
                  color: Colors.black45,
                  child: Center(
                      child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
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
          height: 28,
        ),
        const Text(
          "Please select type of cleaning",
          style: TextStyle(color: Color(0xff707070), fontSize: 16),
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                  child: CategoryThumbnail(
                image: "assets/images/standard.png",
                halfWidth: true,
                title: "Standard Cleaning",
                onPressed: () => pushNewScreen(
                  context,
                  screen: const CleaningPropertyPage(),
                  withNavBar: true, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                ),
              )),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: CategoryThumbnail(
                image: "assets/images/deep.png",
                halfWidth: true,
                title: "Deep Cleaning",
                onPressed: () => pushNewScreen(
                  context,
                  screen: const CleaningPropertyPage(),
                  withNavBar: true, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                ),
              ))
            ],
          ),
        )
      ]),
    );
  }
}
