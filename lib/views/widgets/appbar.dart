import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppBarView extends StatelessWidget {
  AppBarView(
      {Key? key,
      required this.title,
      required this.enableBackButton,
      this.onPressed})
      : super(key: key);
  final String title;
  final bool enableBackButton;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Padding(
      padding: EdgeInsets.only(
          top: (height * 0.03) + MediaQuery.of(context).padding.top,
          bottom: height * 0.03),
      child: Row(
        children: [
          enableBackButton
              ? GestureDetector(
                  onTap: onPressed,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.05, right: 5),
                    child: FaIcon(
                      FontAwesomeIcons.circleArrowLeft,
                      color: Colors.white,
                    ),
                  ),
                )
              : SizedBox(),
          Expanded(
            child: SizedBox(),
            flex: enableBackButton ? 2 : 3,
          ),
          AutoSizeText(
            title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Expanded(
            child: SizedBox(),
            flex: 3,
          )
        ],
      ),
    );
  }
}
