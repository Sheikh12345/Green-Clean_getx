import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 140, 250),
      body: Container(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            AutoSizeText(
              "Order Confirmation",
              style: TextStyle(color: Colors.white),
              presetFontSizes: [20],
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            AutoSizeText(
              "#3788876",
              style: TextStyle(color: Colors.white),
              presetFontSizes: [18],
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Icon(
              FontAwesomeIcons.faceGrin,
              color: Colors.white,
              size: height * 0.3,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            AutoSizeText(
              "Success !",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 51, 245, 57)),
              presetFontSizes: [30],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            AutoSizeText(
              "Your order was successfully placed.",
              presetFontSizes: [18],
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Center(
              child: Container(
                width: width * 0.6,
                padding: EdgeInsets.symmetric(vertical: height * 0.03),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: AutoSizeText(
                    "Done",
                    presetFontSizes: [18],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
