import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/widgets/appbar.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
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
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: Column(
                children: [
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
                                presetFontSizes: [16],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const AutoSizeText(
                                "327 Northwest 39th Street",
                              ),
                              const AutoSizeText(
                                "Miami, Florida 33127",
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                            ],
                          )),
                      const Expanded(flex: 2, child: SizedBox())
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
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
                                    AutoSizeText(
                                      "2",
                                      presetFontSizes: [18],
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
                                  child: AutoSizeText(
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
                                        AutoSizeText(
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
                                    AutoSizeText(
                                      "2",
                                      presetFontSizes: [18],
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
                                  child: AutoSizeText(
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
                                        AutoSizeText(
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
                                    AutoSizeText(
                                      "2",
                                      presetFontSizes: [18],
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
                                  child: AutoSizeText(
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
                                        AutoSizeText(
                                          "View",
                                          style: TextStyle(
                                            color: Color(0xff0c93d0),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
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
