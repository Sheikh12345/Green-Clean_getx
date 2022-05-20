import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OrderConfirmation extends StatelessWidget {
  const OrderConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xff0C93D0),
      body: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: kToolbarHeight + height * 0.02,
            ),
            const AutoSizeText(
              "Order Confirmation",
              style: TextStyle(color: Colors.white),
              presetFontSizes: [22, 20],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const AutoSizeText(
              "#3788876",
              style: TextStyle(color: Colors.white),
              presetFontSizes: [22, 20],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            FaIcon(
              FontAwesomeIcons.faceGrin,
              size: width * 0.6,
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const AutoSizeText(
              "Success",
              style: TextStyle(color: Color.fromARGB(255, 28, 204, 34)),
              presetFontSizes: [30, 24, 22, 20, 18],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const AutoSizeText(
              "Your order was successfully placed",
              presetFontSizes: [18],
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: height * 0.08,
              width: width * 0.6,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: const Center(
                child: AutoSizeText(
                  "Done",
                  style: TextStyle(color: Colors.white),
                  presetFontSizes: [20, 18],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
