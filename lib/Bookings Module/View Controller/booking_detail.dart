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
    final width = Get.width;
    final theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          AppBarView(
            title: "Booking Detail",
            enableBackButton: true,
            backButtonOnPressed: () {
              Get.find<BookingsController>().setIndex(
                  Get.find<BookingsController>().bookingStackIndex - 1);
            },
            enableTrailingButton: false,
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Vacation Rental",
                        ),
                        const SizedBox(
                          height: 15,
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
                                  children: const [
                                    Text(
                                      "Glamourn 6BR@Midtown",
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0xff0707070),
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "327 Northwest 39th Street",
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0xff0707070),
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "Miami, Florida 33127",
                                      style: TextStyle(
                                          color: Color(0xff0707070),
                                          fontSize: 12),
                                      maxLines: 1,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Colors.grey))),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.bed),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('6')
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.bathtub),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('3')
                                          ],
                                        )
                                      ],
                                    )))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const Text(
                          "Cleaner",
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
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
                                          width: width * 0.15,
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "4.0",
                                        style: TextStyle(
                                            color: Color(0xff0707070)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          SizedBox(
                                            width: 14,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Mayra Q.",
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
                                          Text(
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
                                            child: Text(
                                              "mayra.querals@gmail.com",
                                              maxLines: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    padding: const EdgeInsets.only(left: 2),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Colors.grey))),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Flexible(
                                                child: Text(
                                              'Chat',
                                              style: TextStyle(fontSize: 12),
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
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: theme.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: const Center(
                                            child: Text(
                                              "Re-Book",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        )
                                      ],
                                    )))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text("Channel Manager"),
                            const Spacer(),
                            Image.asset(
                              "assets/images/hostaway.png",
                              width: 80,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text("Automatic Booking"),
                            const Spacer(),
                            Icon(
                              FontAwesomeIcons.checkDouble,
                              color: theme.primaryColor,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    const Text("Date"),
                                    const Spacer(),
                                    Column(
                                      children: const [
                                        Text(
                                          "22",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("February")
                                      ],
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  padding: const EdgeInsets.only(left: 8),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          left:
                                              BorderSide(color: Colors.grey))),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text(
                                            "Start",
                                            style: TextStyle(
                                                color: Color(0xff0707070)),
                                          ),
                                          Text(
                                            "11:00 Am",
                                            style: TextStyle(
                                                color: Color(0xff0707070)),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text(
                                            "End",
                                            style: TextStyle(
                                                color: Color(0xff0707070)),
                                          ),
                                          Text(
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
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text("To Do List"),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const ToDoList());
                              },
                              child: Row(
                                children: const [
                                  Text(
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
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Total:",
                              style: TextStyle(
                                  fontSize: 18, color: theme.primaryColor),
                            ),
                            const Spacer(),
                            const Text(
                              "\$150.00",
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: MaterialButton(
                                color: Colors.red,
                                minWidth: width * 0.4,
                                height: 45,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onPressed: () {
                                  Get.find<BookingsController>().setIndex(
                                      Get.find<BookingsController>()
                                              .bookingStackIndex -
                                          1);
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
                                  Get.find<BookingsController>().setIndex(
                                      Get.find<BookingsController>()
                                              .bookingStackIndex +
                                          1);
                                },
                                height: 45,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  "ACCEPT",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}