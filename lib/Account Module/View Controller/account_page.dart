import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Account%20Module/View%20Controller/account_bookings.dart';
import 'package:green_and_clean/Account%20Module/View%20Controller/profile_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
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
                      height: 30 + MediaQuery.of(context).padding.top,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: SizedBox(),
                          flex: 3,
                        ),
                        Text(
                          "Account",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: SizedBox(),
                          flex: 2,
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 25,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text("Maria Querales",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 10),
                    const Text("mayra.querales@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 50)
                  ],
                ),
                Positioned(
                    bottom: -32,
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
                              height: 60,
                              width: 60,
                            )),
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Material(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.black38)),
              borderOnForeground: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () => pushNewScreen(
                        context,
                        screen: const ProfilePage(),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Icon(
                              Icons.person,
                              color: Color(0xff19E6FF),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                              flex: 8,
                              child: Row(
                                children: const [
                                  Text(
                                    "Profile",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      child: Divider(
                        color: const Color(0xff707070).withOpacity(0.5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => pushNewScreen(
                        context,
                        screen: AccountBookingsPage(),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Icon(
                              Icons.event_note,
                              color: Color(0xff19E6FF),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                              flex: 8,
                              child: Row(
                                children: const [
                                  Text(
                                    "Bookings",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      child: Divider(
                        color: const Color(0xff707070).withOpacity(0.5),
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(
                            Icons.notifications,
                            color: Color(0xff19E6FF),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text(
                                  "Notifications",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.arrowRight,
                                  size: 15,
                                )
                              ],
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      child: Divider(
                        color: const Color(0xff707070).withOpacity(0.5),
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(
                            Icons.chat_bubble,
                            color: Color(0xff19E6FF),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text(
                                  "Messages",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.arrowRight,
                                  size: 15,
                                )
                              ],
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      child: Divider(
                        color: const Color(0xff707070).withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Material(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.black38)),
              borderOnForeground: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(
                            Icons.settings,
                            color: Color(0xff19E6FF),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text(
                                  "Settings",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.arrowRight,
                                  size: 15,
                                )
                              ],
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      child: Divider(
                        color: const Color(0xff707070).withOpacity(0.5),
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(
                            Icons.credit_card,
                            color: Color(0xff19E6FF),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                            flex: 8,
                            child: Row(
                              children: const [
                                Text(
                                  "Payment Method",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Icon(
                                  FontAwesomeIcons.arrowRight,
                                  size: 15,
                                )
                              ],
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      child: Divider(
                        color: const Color(0xff707070).withOpacity(0.5),
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(
                            FontAwesomeIcons.link,
                            size: 20,
                            color: Color(0xff19E6FF),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          flex: 8,
                          child: Row(
                            children: const [
                              Text(
                                "Channel Manager",
                                style: TextStyle(fontSize: 14),
                              ),
                              Spacer(),
                              Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 15,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ),
                      child: Divider(
                        color: const Color(0xff707070).withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
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
