import 'package:get/get_navigation/src/routes/get_route.dart';

import '../binding.dart';
import '../validation.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.Home;

  static final routes = [
    GetPage(
      name: Paths.Home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
