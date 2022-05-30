import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Bookings%20Module/View%20Controller/review_page.dart';
import 'package:green_and_clean/Utils/Constants/size.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BookingDonePage extends StatelessWidget {
  const BookingDonePage({Key? key}) : super(key: key);

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
              title: "Booking",
              enableBackButton: true,
              enableTrailingButton: false,
              backButtonOnPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          height: AppConfig(context).height - 180,
                          margin: const EdgeInsets.only(top: 6.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30.0)),
                            color: Color(0xff0C93D0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                "#3788876",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              const Icon(
                                FontAwesomeIcons.faceGrin,
                                color: Colors.white,
                                size: 200,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const Text(
                                "Success !",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff60EF06), fontSize: 30),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                "Congrats! Your Property:",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Glamourn 6BR @Midtow",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "HAS BEEN CLEANED",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff60EF06), fontSize: 20),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "View Images",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.images,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(
                                    child: MaterialButton(
                                      color: Colors.red,
                                      minWidth: width * 0.4,
                                      height: 45,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "DECLINE",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      color: const Color(0xff60EF06),
                                      minWidth: width * 0.4,
                                      onPressed: () {
                                        pushNewScreen(
                                          context,
                                          screen: const ReviewPage(),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                        );
                                      },
                                      height: 45,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Text(
                                        "ACCEPT",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )))),
          ],
        ),
      ),
    );
  }
}
