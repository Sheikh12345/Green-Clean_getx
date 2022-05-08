import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/widgets/appbar.dart';

import '../home_controller.dart';

class CleanersList extends StatelessWidget {
  const CleanersList({Key? key}) : super(key: key);

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
            title: "Available Cleaners",
            enableBackButton: true,
            onPressed: () {
              Get.find<HomeController>()
                  .setIndex(Get.find<HomeController>().homeStackIndex - 1);
            },
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.02),
                itemBuilder: (_, index) => CleanerDetailThumbnail(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CleanerDetailThumbnail extends StatelessWidget {
  const CleanerDetailThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Get.find<HomeController>()
            .setIndex(Get.find<HomeController>().homeStackIndex + 1);
      },
      child: Container(
        width: width,
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey[300]!))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Material(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/images/person.png",
                                width: width * 0.18,
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              size: 14,
                            ),
                            AutoSizeText(
                              "3.3 Mi",
                              presetFontSizes: [14, 12, 10, 8],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Center(
                          child: AutoSizeText(
                            "English/Spanish",
                            maxLines: 1,
                            presetFontSizes: [14, 12, 10, 8],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Center(
                        child: AutoSizeText(
                          "Mayra Q.",
                          presetFontSizes: [16],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Center(
                        child: AutoSizeText(
                          "House/Standard Cleaning",
                          presetFontSizes: [14, 12, 10],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AutoSizeText.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "\$60.00",
                                  style: TextStyle(fontSize: 18)),
                              TextSpan(
                                  text: "\nFixed Price",
                                  style: TextStyle(fontSize: 11))
                            ]),
                            textAlign: TextAlign.center,
                          ),
                          AutoSizeText.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text: "\$20.00",
                                  style: TextStyle(fontSize: 18)),
                              TextSpan(
                                  text: "\nHourly Price",
                                  style: TextStyle(fontSize: 11))
                            ]),
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                              onPressed: () {},
                              iconSize: width * 0.06,
                              icon: Icon(Icons.arrow_forward_ios_sharp))
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        height: height * 0.05,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.chat),
                              label: AutoSizeText(
                                "Chat",
                                maxLines: 1,
                                presetFontSizes: [14, 12, 10],
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: Size(width * 0.5, height * 0.5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                            )),
                            Expanded(
                                child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.eye),
                              label: AutoSizeText(
                                "Profile",
                                maxLines: 1,
                                presetFontSizes: [14, 12, 10],
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: Size(width * 0.5, height * 0.5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10))),
                                  primary: Colors.lightBlue),
                            ))
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
