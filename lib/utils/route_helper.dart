import 'package:get/get.dart';
import 'package:green_and_clean/views/auth/views/login.dart';

import '../views/navigation/navigation_page.dart';

class RouteHelper {
  static List<GetPage> routes = [
    GetPage(name: "/", page: () => NavigationPage()),
    GetPage(name: "/login", page: () => LoginPage())
  ];
}
