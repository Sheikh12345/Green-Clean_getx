import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Bookings%20Module/View%20Model/bookings_controller.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';
import 'todo_list.dart';

class BookingDetail extends StatelessWidget {
  const BookingDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          AppBarView(
            title: "Booking Detail",
            enableBackButton: true,
            onPressed: () {
              Get.find<BookingsController>().setIndex(
                  Get.find<BookingsController>().bookingStackIndex - 1);
            },
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const AutoSizeText(
                      "Vacation Rental",
                      presetFontSizes: [16],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/home.png"),
                          flex: 2,
                        ),
                        Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const AutoSizeText(
                                  "Glamourn 6BR@Midtown",
                                  presetFontSizes: [14, 12, 10, 8],
                                  maxLines: 1,
                                  style: TextStyle(color: Color(0xff0707070)),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const AutoSizeText(
                                  "327 Northwest 39th Street",
                                  presetFontSizes: [12, 10, 8],
                                  maxLines: 1,
                                  style: TextStyle(color: Color(0xff0707070)),
                                ),
                                const AutoSizeText(
                                  "Miami, Florida 33127",
                                  presetFontSizes: [12, 10, 8],
                                  style: TextStyle(color: Color(0xff0707070)),
                                  maxLines: 1,
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.grey))),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.bed),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        AutoSizeText('6')
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.bathtub),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        AutoSizeText('3')
                                      ],
                                    )
                                  ],
                                )))
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const AutoSizeText(
                      "Cleaner",
                      presetFontSizes: [14],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Material(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      "assets/images/person.png",
                                      width: width * 0.15,
                                    )),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  AutoSizeText(
                                    "4.0",
                                    style: TextStyle(color: Color(0xff0707070)),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 14,
                                  )
                                ],
                              ),
                            ],
                          ),
                          flex: 2,
                        ),
                        Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 14,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      AutoSizeText(
                                        "Mayra Q.",
                                        presetFontSizes: [16],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.phone,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      AutoSizeText(
                                        "305-323-5677",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.email,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Flexible(
                                        child: AutoSizeText(
                                          "mayra.querals@gmail.com",
                                          presetFontSizes: [14, 12, 10, 8],
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                padding: EdgeInsets.only(left: width * 0.02),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.grey))),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Flexible(
                                            child: AutoSizeText(
                                          'Chat',
                                          presetFontSizes: [14, 12, 10],
                                          maxLines: 1,
                                        )),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.forum,
                                          color: theme.primaryColor,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: theme.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Center(
                                        child: AutoSizeText(
                                          "Re-Book",
                                          maxLines: 1,
                                          minFontSize: 6,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )))
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        const AutoSizeText("Channel Manager"),
                        const Spacer(),
                        Image.asset(
                          "assets/images/hostaway.png",
                          width: width * 0.2,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        const AutoSizeText("Automatic Booking"),
                        const Spacer(),
                        Icon(
                          FontAwesomeIcons.checkDouble,
                          color: theme.primaryColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 6,
                            child: Row(
                              children: [
                                const AutoSizeText("Date"),
                                const Spacer(),
                                Column(
                                  children: const [
                                    AutoSizeText(
                                      "22",
                                      presetFontSizes: [16],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AutoSizeText("February")
                                  ],
                                )
                              ],
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(left: width * 0.03),
                              padding: EdgeInsets.only(left: width * 0.03),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      left: BorderSide(color: Colors.grey))),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      AutoSizeText(
                                        "Start",
                                        style: TextStyle(
                                            color: Color(0xff0707070)),
                                      ),
                                      AutoSizeText(
                                        "11:00 Am",
                                        style: TextStyle(
                                            color: Color(0xff0707070)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      AutoSizeText(
                                        "End",
                                        style: TextStyle(
                                            color: Color(0xff0707070)),
                                      ),
                                      AutoSizeText(
                                        "11:00 Am",
                                        style: TextStyle(
                                            color: Color(0xff0707070)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        const AutoSizeText("To Do List"),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const ToDoList());
                          },
                          child: Row(
                            children: const [
                              AutoSizeText(
                                "View",
                                style: TextStyle(color: Color(0xff0c93d0)),
                              ),
                              Icon(
                                FontAwesomeIcons.anglesRight,
                                color: Color(0xff0c93d0),
                                size: 14,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          "Total:",
                          presetFontSizes: const [18],
                          style: TextStyle(color: theme.primaryColor),
                        ),
                        const Spacer(),
                        AutoSizeText(
                          "\$150.00",
                          presetFontSizes: const [18],
                          style: TextStyle(color: theme.primaryColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: MaterialButton(
                            color: const Color(0xff60EF06),
                            minWidth: width * 0.4,
                            onPressed: () {},
                            height: height * 0.06,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: const AutoSizeText("ACCEPT"),
                          ),
                        ),
                        Flexible(
                          child: MaterialButton(
                            color: Colors.red,
                            minWidth: width * 0.4,
                            height: height * 0.06,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onPressed: () {},
                            child: const AutoSizeText(
                              "DECLINE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                  ],
                )),
          ))
        ],
      ),
    );
  }
}
