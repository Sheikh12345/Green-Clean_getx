import 'package:auto_size_text/auto_size_text.dart';
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
                        const AutoSizeText(
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
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const AutoSizeText("Maria Querales",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const AutoSizeText("mayra.querales@gmail.com",
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Get.find<AccountController>().setIndex(
                          Get.find<AccountController>().accountStackIndex + 1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                                      AutoSizeText("Profile"),
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
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                                      AutoSizeText("Bookings"),
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
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                                    AutoSizeText("Notifications"),
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
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(
                            Icons.message,
                            color: Color(0xff19E6FF),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          flex: 8,
                          child: Row(
                            children: const [
                              AutoSizeText("Messages"),
                              Spacer(),
                              Icon(Icons.arrow_right_alt)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                                    AutoSizeText("Settings"),
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
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                                    AutoSizeText("Payment Method"),
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
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                                    AutoSizeText("Channel Manager"),
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
                    SizedBox(
                      height: height * 0.02,
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
