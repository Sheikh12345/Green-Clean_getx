import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';
import '../View Model/home_controller.dart';

class MakeOfferPage extends StatelessWidget {
  const MakeOfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(children: [
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
        Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text("Make an offer",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                const SizedBox(height: 20),
                const Icon(Icons.currency_exchange_outlined,
                    size: 40, color: Colors.grey),
                const SizedBox(height: 30),
                Text("Enter Amount",
                    style:
                        TextStyle(fontSize: 16, color: Colors.grey.shade800)),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'eg: 10',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Get.find<HomeController>().setIndex(
                        Get.find<HomeController>().homeStackIndex + 1);
                  },
                  child: Container(
                    width: AppConfig(context).width * 0.6,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black45),
                    child: const Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
        )
      ]),
    );
  }
}
