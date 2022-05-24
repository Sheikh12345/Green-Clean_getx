import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Account Module/View Model/account_controller.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Column(
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
                    children: [
                      const Expanded(
                        child: SizedBox(),
                        flex: 3,
                      ),
                      const Text(
                        "Account",
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
                  ))
            ],
          ),
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          child: Material(
            elevation: 8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.black38)),
            borderOnForeground: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Get.find<AccountController>().setIndex(
                        Get.find<AccountController>().accountStackIndex + 1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
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
                              child: Container(
                                child: Row(
                                  children: const [
                                    Text(
                                      "Profile",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_right_alt)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: const Color(0xff707070)
                                                .withOpacity(0.3)))),
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.find<AccountController>().setIndex(
                        Get.find<AccountController>().accountStackIndex + 2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
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
                              child: Container(
                                child: Row(
                                  children: const [
                                    Text(
                                      "Bookings",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_right_alt)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: const Color(0xff707070)
                                                .withOpacity(0.3)))),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
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
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    "Notifications",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_right_alt)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: const Color(0xff707070)
                                              .withOpacity(0.3)))),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
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
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    "Messages",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_right_alt)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: const Color(0xff707070)
                                              .withOpacity(0.3)))),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
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
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    "Settings",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_right_alt)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: const Color(0xff707070)
                                              .withOpacity(0.3)))),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
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
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    "Payment Method",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_right_alt)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: const Color(0xff707070)
                                              .withOpacity(0.3)))),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
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
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    "Channel Manager",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_right_alt)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: const Color(0xff707070)
                                              .withOpacity(0.3)))),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
