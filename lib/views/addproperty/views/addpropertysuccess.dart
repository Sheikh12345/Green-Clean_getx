import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AddPropertySuccessPage extends StatelessWidget {
  const AddPropertySuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 140, 250),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Icon(
            FontAwesomeIcons.faceGrin,
            color: Colors.white,
            size: width * 0.6,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          AutoSizeText(
            "Property Added Successfully !",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 51, 245, 57)),
            presetFontSizes: [20],
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Center(
            child: Container(
              width: width * 0.6,
              padding: EdgeInsets.symmetric(vertical: 20),
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
    );
  }
}
