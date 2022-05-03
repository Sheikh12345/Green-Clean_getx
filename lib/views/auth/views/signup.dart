import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/auth/views/newpassword.dart';
import 'package:green_and_clean/views/auth/views/sms_verification.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  height: height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Column(
                    children: [
                      Center(
                        child: AutoSizeText(
                          "Sign Up",
                          presetFontSizes: [30, 28, 24, 22],
                        ),
                      ),
                      Center(
                        child: AutoSizeText(
                          "Add your details to sign up",
                          style: TextStyle(color: Color(0xffb6b7b7)),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Name",
                            prefixIcon: Icon(
                              Icons.person,
                              size: height * 0.025,
                            )),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon:
                                Icon(Icons.email, size: height * 0.025)),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Mobile No",
                            prefixIcon: Icon(FontAwesomeIcons.mobileScreen,
                                size: height * 0.025)),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(FontAwesomeIcons.key,
                                size: height * 0.025)),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (val) {}),
                          Flexible(
                              child: AutoSizeText(
                                  "I accept terms & conditions and privacy policy."))
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => NewPasswordPage());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(height * 0.015),
                          child: Center(
                            child: AutoSizeText(
                              "Sign Up",
                              style: TextStyle(color: Colors.white),
                              presetFontSizes: [22, 20],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Center(
                        child: AutoSizeText.rich(TextSpan(children: [
                          TextSpan(text: "Already have an Account? "),
                          TextSpan(
                              text: "Login",
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => Get.back(),
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.w800))
                        ])),
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
