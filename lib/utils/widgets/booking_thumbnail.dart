import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BookingThumbnail extends StatelessWidget {
  const BookingThumbnail(
      {Key? key, required this.onPressed, required this.accountBooking})
      : super(key: key);
  final bool accountBooking;
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
                      const AutoSizeText(
                        "22",
                        presetFontSizes: [18],
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const AutoSizeText("February"),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      const AutoSizeText(
                        "Start at 2:00 PM",
                        minFontSize: 6,
                        presetFontSizes: [10],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      const AutoSizeText(
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
                            const Expanded(
                                child: AutoSizeText(
                              "Glomoum 6BR @Midtown",
                              presetFontSizes: [16, 14, 12, 10, 8],
                              maxLines: 1,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )),
                            Icon(
                              FontAwesomeIcons.circleArrowRight,
                              size: height * 0.02,
                              color: Colors.black,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            const Expanded(
                                child: AutoSizeText(
                              "327 Northwest 39th Street\nMiami, Florida 33127",
                              presetFontSizes: [14, 12],
                              minFontSize: 8,
                              maxLines: 2,
                            )),
                            SizedBox(
                              width: width * 0.05,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            accountBooking
                                ? Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "3.5",
                                        style:
                                            TextStyle(color: Color(0xff999999)),
                                      )
                                    ],
                                  )
                                : Row(
                                    children: [
                                      const AutoSizeText("3"),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.bathtub,
                                        size: height * 0.03,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const AutoSizeText("6"),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.bed_rounded,
                                        size: height * 0.03,
                                      ),
                                    ],
                                  ),
                            const Spacer(),
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
