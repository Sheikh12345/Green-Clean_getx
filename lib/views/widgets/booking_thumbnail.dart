import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingThumbnail extends StatelessWidget {
  const BookingThumbnail({Key? key, required this.onPressed}) : super(key: key);
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      AutoSizeText(
                        "22",
                        presetFontSizes: [18],
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AutoSizeText("February"),
                      SizedBox(
                        height: 3,
                      ),
                      AutoSizeText(
                        "Start at 2:00 PM",
                        minFontSize: 6,
                        presetFontSizes: [10],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      AutoSizeText(
                        "End at 5:00 PM",
                        minFontSize: 6,
                        presetFontSizes: [10],
                      )
                    ],
                  )),
              Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: AutoSizeText(
                              "Glomoum 6BR @Midtown",
                              presetFontSizes: [16, 14, 12, 10, 8],
                              maxLines: 1,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )),
                            Icon(
                              Icons.arrow_circle_right,
                              color: Colors.black,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: AutoSizeText(
                              "327 Northwest 39th Street\nMiami, Florida 33127",
                              minFontSize: 8,
                              maxLines: 2,
                            )),
                            SizedBox(
                              width: 6,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/home.png",
                                  width: width * 0.07,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                AutoSizeText(
                                  "Houses",
                                  presetFontSizes: [12, 10, 8],
                                  maxLines: 1,
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            AutoSizeText("3"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.bathtub,
                              size: height * 0.03,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            AutoSizeText("6"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.bed_rounded,
                              size: height * 0.03,
                            ),
                            Spacer(),
                            AutoSizeText(
                              "Total: \$45.00",
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
