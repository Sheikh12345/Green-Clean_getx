import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

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
          const SizedBox(
            height: kToolbarHeight / 2,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.find<HomeController>().setIndex(
                        Get.find<HomeController>().homeStackIndex - 1);
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
                "Available Cleaners",
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
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
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
                                "assets/person.png",
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
                            presetFontSizes: [16, 14, 12, 10, 8],
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
                          presetFontSizes: [20, 18],
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
                          AutoSizeText(
                            "\$60.00\nFixed Price",
                            textAlign: TextAlign.center,
                            presetFontSizes: [12, 10],
                          ),
                          AutoSizeText(
                            "\$20.00\nHourly Price",
                            textAlign: TextAlign.center,
                            presetFontSizes: [12, 10],
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
