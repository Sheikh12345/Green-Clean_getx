import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Scaffold(
      backgroundColor: const Color(0xff0C93D0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Order Confirmation",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "#3788876",
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 35,
            ),
            const Icon(
              FontAwesomeIcons.faceGrin,
              color: Colors.white,
              size: 200,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Success !",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff60EF06), fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Your order was successfully placed.",
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 70,
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
