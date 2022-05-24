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
                      const Text(
                        "22",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Text("February"),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      const Text(
                        "Start at 2:00 PM",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      const Text(
                        "End at 5:00 PM",
                        style: TextStyle(fontSize: 12),
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
                                child: Text(
                              "Glomoum 6BR @Midtown",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                              maxLines: 1,
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
                                child: Text(
                              "327 Northwest 39th Street\nMiami, Florida 33127",
                              style: TextStyle(fontSize: 12),
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
                                      const Text("3"),
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
                                      const Text("6"),
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
                            Text(
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
