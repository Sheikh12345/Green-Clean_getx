import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/bookings/bookings_controller.dart';
import 'package:green_and_clean/views/bookings/bookings_stack/todo_list.dart';

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
          const SizedBox(
            height: kToolbarHeight / 2,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.find<BookingsController>().setIndex(
                        Get.find<BookingsController>().bookingStackIndex - 1);
                  },
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  )),
              const Expanded(
                child: SizedBox(),
                flex: 2,
              ),
              const AutoSizeText(
                "Booking Detail",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Expanded(
                child: SizedBox(),
                flex: 3,
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                decoration: BoxDecoration(
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
                    AutoSizeText(
                      "Vacation Rental",
                      presetFontSizes: [16],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Icon(Icons.home_filled),
                          flex: 2,
                        ),
                        Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  "Glamourn 6BR@Midtown",
                                  presetFontSizes: [16],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                AutoSizeText(
                                  "327 Northwest 39th Street",
                                ),
                                AutoSizeText(
                                  "Miami, Florida 33127",
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                decoration: BoxDecoration(
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
                                      children: [
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
                    Divider(
                      thickness: 2,
                    ),
                    AutoSizeText(
                      "Cleaner",
                      presetFontSizes: [16],
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
                                      "assets/person.png",
                                      width: width * 0.15,
                                    )),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AutoSizeText("4.0"),
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
                              padding: EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "Mayra Q.",
                                    presetFontSizes: [16],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
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
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      AutoSizeText(
                                        "mayra.querals@gmail.com",
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
                                decoration: BoxDecoration(
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
                                        AutoSizeText('Chat'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.forum),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: theme.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                        child: AutoSizeText(
                                          "Re-Book",
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
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [AutoSizeText("Channel Manager")],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        AutoSizeText("Automatic Booking"),
                        Spacer(),
                        Icon(
                          Icons.check,
                          color: theme.primaryColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      thickness: 2,
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
                                AutoSizeText("Date"),
                                Spacer(),
                                Column(
                                  children: [
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
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(color: Colors.grey))),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      AutoSizeText("Start"),
                                      AutoSizeText("11:00 Am")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      AutoSizeText("End"),
                                      AutoSizeText("11:00 Am")
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
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        AutoSizeText("To Do List"),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ToDoList());
                          },
                          child: Row(
                            children: [
                              AutoSizeText("View"),
                              Icon(
                                Icons.arrow_forward_ios,
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
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          "Total:",
                          presetFontSizes: [18],
                          style: TextStyle(color: theme.primaryColor),
                        ),
                        Spacer(),
                        AutoSizeText(
                          "\$150.00",
                          presetFontSizes: [18],
                          style: TextStyle(color: theme.primaryColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: MaterialButton(
                            color: Color.fromARGB(255, 72, 247, 77),
                            minWidth: width * 0.4,
                            onPressed: () {},
                            child: AutoSizeText("ACCEPT"),
                          ),
                        ),
                        Flexible(
                          child: MaterialButton(
                            color: Colors.red,
                            minWidth: width * 0.4,
                            onPressed: () {},
                            child: AutoSizeText("DECLINE"),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ))
        ],
      ),
    );
  }
}
