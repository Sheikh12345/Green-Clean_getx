import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryThumbnail extends StatelessWidget {
  const CategoryThumbnail(
      {Key? key,
      this.halfWidth = false,
      required this.title,
      required this.image,
      required this.onPressed})
      : super(key: key);
  final bool halfWidth;
  final String title;
  final String image;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: halfWidth ? width / 2 : width,
        height: halfWidth ? 134 : 149,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                  child: Image.asset(
                image,
                fit: BoxFit.fill,
                height: height * 0.2,
              )),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: width * 0.35,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(25))),
                  child: Center(
                      child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
