import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Home%20Module/View%20Controller/cleaning_order_summary.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MakeOfferPage extends StatelessWidget {
  const MakeOfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 234,
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
          const SizedBox(
            height: 15,
          ),
          Container(
            height: AppConfig(context).height - 294,
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[3],
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Image(
                        image: AssetImage("assets/icons/close_icon.png"),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  const Text("Make an offer",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage("assets/icons/money.png"),
                  ),
                  const SizedBox(height: 30),
                  const Text("Enter Amount",
                      style: TextStyle(fontSize: 16, color: Color(0xff050505))),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: 'eg: 10',
                          hintStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: const CleaningOrderSummary(),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      width: AppConfig(context).width * 0.85,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff4623F0)),
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
      ),
    );
  }
}
