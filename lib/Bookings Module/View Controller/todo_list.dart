import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

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
              title: "ToDo List",
              enableBackButton: true,
              backButtonOnPressed: () => Get.back(),
              enableTrailingButton: false,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
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
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "327 Northwest 39th Street",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "Miami, Florida 33127",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )),
                      const Expanded(flex: 2, child: SizedBox())
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Flexible(
                                flex: 1,
                                child: Row(
                                  children: const [
                                    Text(
                                      "2",
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.bed_rounded,
                                      color: Color(0xff0707070),
                                      size: 30,
                                    )
                                  ],
                                )),
                            const Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    'Bedrooms',
                                    style: TextStyle(color: Color(0xff0707070)),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.checkDouble,
                                      color: theme.primaryColor,
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: const [
                                        Text(
                                          "View",
                                          style: TextStyle(
                                            color: Color(0xff0c93d0),
                                          ),
                                        ),
                                        Icon(
                                          FontAwesomeIcons.anglesRight,
                                          size: 14,
                                          color: Color(0xff0c93d0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Flexible(
                                flex: 1,
                                child: Row(
                                  children: const [
                                    Text(
                                      "2",
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.bed_rounded,
                                      color: Color(0xff0707070),
                                      size: 30,
                                    )
                                  ],
                                )),
                            const Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    'Bedrooms',
                                    style: TextStyle(color: Color(0xff0707070)),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.checkDouble,
                                      color: theme.primaryColor,
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: const [
                                        Text(
                                          "View",
                                          style: TextStyle(
                                            color: Color(0xff0c93d0),
                                          ),
                                        ),
                                        Icon(
                                          FontAwesomeIcons.anglesRight,
                                          size: 14,
                                          color: Color(0xff0c93d0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Flexible(
                                flex: 1,
                                child: Row(
                                  children: const [
                                    Text(
                                      "2",
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.bed_rounded,
                                      color: Color(0xff0707070),
                                      size: 30,
                                    )
                                  ],
                                )),
                            const Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    'Bedrooms',
                                    style: TextStyle(color: Color(0xff0707070)),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.checkDouble,
                                      color: theme.primaryColor,
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: const [
                                        Text(
                                          "View",
                                          style: TextStyle(
                                            color: Color(0xff0c93d0),
                                          ),
                                        ),
                                        Icon(
                                          FontAwesomeIcons.anglesRight,
                                          size: 14,
                                          color: Color(0xff0c93d0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        const Divider()
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
