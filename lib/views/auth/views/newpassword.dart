import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/auth/views/sms_verification.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height - MediaQuery.of(context).padding.top,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(FontAwesomeIcons.circleArrowLeft))
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Column(
                      children: [
                        Center(
                          child: AutoSizeText(
                            "New Password",
                            textAlign: TextAlign.center,
                            presetFontSizes: [30, 20],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Center(
                          child: AutoSizeText(
                            "Please enter your email to recieve a\nlink to create a new password via email",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(FontAwesomeIcons.key,
                                  size: height * 0.025)),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Confirm Password",
                              prefixIcon: Icon(FontAwesomeIcons.key,
                                  size: height * 0.025)),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => SmsVerificationPage());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(height * 0.015),
                            child: Center(
                              child: AutoSizeText(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                                presetFontSizes: [22, 20],
                              ),
                            ),
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
