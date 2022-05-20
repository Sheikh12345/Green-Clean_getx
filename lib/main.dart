import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:green_and_clean/Utils/service_binder.dart';
import 'package:green_and_clean/utils/route_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
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
          fontFamily: 'LuxoraGrotest',
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(color: Color(0xffb6b7b7)),
              prefixIconColor: Color(0xffb6b7b7)),
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xff4623F0)),
      debugShowCheckedModeBanner: false,
      getPages: RouteHelper.routes,
      initialRoute: "/login",
    );
  }
}
