import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../Account Module/View Model/account_controller.dart';
import '../../Utils/Constants/size.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: width,
            color: theme.primaryColor,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height:
                          (height * 0.03) + MediaQuery.of(context).padding.top,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: SizedBox(),
                          flex: 3,
                        ),
                        const Text(
                          "Profile",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        const Expanded(
                          child: SizedBox(),
                          flex: 2,
                        ),
                        const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    const Text("mayra.querales@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: height * 0.06,
                    )
                  ],
                ),
                Positioned(
                    bottom: -height * 0.04,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/person.png",
                              height: height * 0.08,
                              width: height * 0.08,
                            )),
                      ),
                    )),
                Positioned(
                    left: 5,
                    top: MediaQuery.of(context).padding.top,
                    child: IconButton(
                        onPressed: () => Get.find<AccountController>().setIndex(
                            Get.find<AccountController>().accountStackIndex -
                                1),
                        icon: const FaIcon(
                          FontAwesomeIcons.circleArrowLeft,
                          color: Colors.white,
                        )))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  filled: true,
                  fillColor: Color.fromRGBO(235, 235, 235, 1),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color.fromRGBO(25, 230, 255, 1),
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  filled: true,
                  fillColor: Color.fromRGBO(235, 235, 235, 1),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromRGBO(25, 230, 255, 1),
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  filled: true,
                  fillColor: Color.fromRGBO(235, 235, 235, 1),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.map,
                    color: Color.fromRGBO(25, 230, 255, 1),
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Address",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  filled: true,
                  fillColor: Color.fromRGBO(235, 235, 235, 1),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: Color.fromRGBO(25, 230, 255, 1),
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Apt",
                hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                filled: true,
                fillColor: Color.fromRGBO(235, 235, 235, 1),
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    bottom: height * 0.01),
                child: const TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "City",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                    filled: true,
                    fillColor: Color.fromRGBO(235, 235, 235, 1),
                    border: InputBorder.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
              SizedBox(
                width: width * 0.05,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    bottom: height * 0.01),
                child: const TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "State",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                    filled: true,
                    fillColor: Color.fromRGBO(235, 235, 235, 1),
                    border: InputBorder.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Old Password",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  filled: true,
                  fillColor: Color.fromRGBO(235, 235, 235, 1),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(25, 230, 255, 1),
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "New Password",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  filled: true,
                  fillColor: Color.fromRGBO(235, 235, 235, 1),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(25, 230, 255, 1),
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.03, right: width * 0.03, bottom: height * 0.01),
            child: const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Confirm New Password",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  filled: true,
                  fillColor: Color.fromRGBO(235, 235, 235, 1),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color.fromRGBO(25, 230, 255, 1),
                  )),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              // Get.find<HomeController>().setIndex(
              //     Get.find<HomeController>().homeStackIndex + 1);
            },
            child: Container(
              width: AppConfig(context).width * 0.6,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: theme.primaryColor),
              child: const Center(
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
