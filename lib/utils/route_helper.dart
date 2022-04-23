import 'package:get/get.dart';

import '../views/navigation/navigation_page.dart';

class RouteHelper {
  static List<GetPage> routes = [
    GetPage(name: "/", page: () => NavigationPage())
  ];
}
