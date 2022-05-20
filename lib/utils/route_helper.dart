import 'package:get/get.dart';
import 'package:green_and_clean/Auth%20Module/View%20Controller/login.dart';
import 'package:green_and_clean/Utils/navigation/navigation_page.dart';

class RouteHelper {
  static List<GetPage> routes = [
    GetPage(name: "/", page: () => const NavigationPage()),
    GetPage(name: "/login", page: () => LoginPage())
  ];
}
