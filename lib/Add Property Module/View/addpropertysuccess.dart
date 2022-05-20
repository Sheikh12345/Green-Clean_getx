import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Add%20Property%20Module/View/vacationrental_page.dart';

class AddPropertySuccessPage extends StatelessWidget {
  const AddPropertySuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 140, 250),
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
          const AutoSizeText(
            "Property Added Successfully !",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 51, 245, 57)),
            presetFontSizes: [20],
          ),
          const SizedBox(height: 60),
          GestureDetector(
            onTap: () {
              Get.off(const VacationRentalPage());
            },
            child: Center(
              child: Container(
                width: width * 0.5,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: AutoSizeText(
                    "Done",
                    presetFontSizes: [18],
                    style: TextStyle(color: Colors.white),
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
