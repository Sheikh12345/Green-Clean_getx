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
      backgroundColor: const Color.fromARGB(255, 6, 140, 250),
      body: SizedBox(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            const Text(
              "Order Confirmation",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Text(
              "#3788876",
              style: TextStyle(color: Colors.white, fontSize: 16),
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
            const Text(
              "Success !",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 51, 245, 57), fontSize: 22),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              "Your order was successfully placed.",
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Center(
                child: Container(
                  width: width * 0.6,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
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
