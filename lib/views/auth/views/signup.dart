import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/views/auth/views/sms_verification.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: kToolbarHeight / 2,
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios))
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: AutoSizeText(
                  "Sign Up",
                  presetFontSizes: [24, 22],
                ),
              ),
              Center(
                child: AutoSizeText(
                  "Add your dtails to sign up",
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Name", prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email", prefixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Mobile No",
                    prefixIcon: Icon(FontAwesomeIcons.mobileScreen)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(FontAwesomeIcons.key)),
              ),
              SizedBox(
                height: height * 0.02,
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
                height: height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => SmsVerificationPage());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(15),
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
                height: height * 0.05,
              ),
              Center(
                child: AutoSizeText.rich(TextSpan(children: [
                  TextSpan(text: "Don't have an Account? "),
                  TextSpan(
                      text: "Sign Up",
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () => Get.back(),
                      style: TextStyle(
                          color: Colors.blue[800], fontWeight: FontWeight.w800))
                ])),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
