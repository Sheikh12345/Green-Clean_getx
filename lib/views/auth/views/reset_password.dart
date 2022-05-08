import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Column(
                    children: [
                      Center(
                        child: AutoSizeText(
                          "Reset Password",
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
                        height: height * 0.08,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.email,
                              size: 20,
                            )),
                      ),
                      SizedBox(
                        height: height * 0.08,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(height * 0.015),
                          child: Center(
                            child: AutoSizeText(
                              "Send",
                              style: TextStyle(color: Colors.white),
                              presetFontSizes: [22, 20],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
