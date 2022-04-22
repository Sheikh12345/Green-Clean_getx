import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/service_binder.dart';
import 'package:green_and_clean/utils/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Green & Clean',
      initialBinding: AppServiceBinder(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xff009D06)
      ),
      debugShowCheckedModeBanner: false,
      getPages: RouteHelper.routes,
      initialRoute: "/",
    );
  }
}

