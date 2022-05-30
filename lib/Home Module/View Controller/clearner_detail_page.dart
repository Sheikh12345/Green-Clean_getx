import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Home%20Module/View%20Controller/make_offer_page.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CleanerDetailPage extends StatelessWidget {
  const CleanerDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
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
                            size: 20,
                          ))),
                  Positioned(
                    child: Container(
                      height: 46,
                      color: Colors.black45,
                      child: const Center(
                          child: Text(
                        "Available HouseKeepers",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(color: Color(0xff707070), width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
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
                                      const SizedBox(
                                        height: 10,
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
                                          Text("(125)",
                                              style: TextStyle(
                                                  color: Color(0xff707070)))
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
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff707070),
                                                fontSize: 16),
                                          ),
                                          Text("Miami, Florida",
                                              style: TextStyle(
                                                  color: Color(0xff707070))),
                                        ],
                                      )),
                                      const Image(
                                        height: 35,
                                        image: AssetImage(
                                            "assets/icons/chat_icon.png"),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Center(
                                    child: Text("House/Standard Cleaning",
                                        style: TextStyle(
                                            color: Color(0xff707070))),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.location_on_sharp,
                                        size: 14,
                                      ),
                                      Text("3.3 Mi",
                                          style: TextStyle(
                                              color: Color(0xff707070)))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Center(
                                    child: Text("English/Spanish",
                                        style: TextStyle(
                                            color: Color(0xff707070))),
                                  ),
                                  const SizedBox(
                                    height: 26,
                                  ),
                                ],
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const Text(
                        "Please select your prefered pricing option",
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      GestureDetector(
                        onTap: () => pushNewScreen(
                          context,
                          screen: const MakeOfferPage(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        ),
                        child: Container(
                          width: AppConfig(context).width * 0.85,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: theme.primaryColor),
                          child: const Center(
                            child: Text(
                              "\$60.00/Total",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      GestureDetector(
                        onTap: () => pushNewScreen(
                          context,
                          screen: const MakeOfferPage(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        ),
                        child: Container(
                          width: AppConfig(context).width * 0.85,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.lightBlue),
                          child: const Center(
                            child: Text(
                              "\$20.00/Hour",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      GestureDetector(
                        onTap: () => pushNewScreen(
                          context,
                          screen: const MakeOfferPage(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        ),
                        child: Container(
                          width: AppConfig(context).width * 0.85,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black54),
                          child: const Center(
                            child: Text(
                              "Make Offer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
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
