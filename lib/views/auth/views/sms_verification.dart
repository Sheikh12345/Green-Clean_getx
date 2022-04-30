import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SmsVerificationPage extends StatelessWidget {
  const SmsVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
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
                "We have sent an SMS\nverification code to\nyour Mobile.",
                textAlign: TextAlign.center,
                presetFontSizes: [20],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: AutoSizeText(
                "Please check your mobile number 071*****12\n continue to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                textStyle: TextStyle(color: Colors.black),
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    borderWidth: 2,
                    inactiveColor: Colors.grey[300]),
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            AutoSizeText.rich(TextSpan(children: [
              TextSpan(
                  text: "Didn't Receive? ",
                  style: TextStyle(color: Colors.grey)),
              TextSpan(text: "Send Again")
            ])),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
