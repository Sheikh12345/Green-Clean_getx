import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AddPropertySuccessPage extends StatelessWidget {
  const AddPropertySuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Scaffold(
      backgroundColor: const Color(0xff0C93D0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.faceGrin,
            color: Colors.white,
            size: 200,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Property Added Successfully !",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff60EF06), fontSize: 25),
          ),
          const SizedBox(height: 60),
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
    );
  }
}
