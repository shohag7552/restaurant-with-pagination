import 'package:get/get.dart';
import 'package:with_pagination_getx/app/bindings/home_binding.dart';
import 'package:with_pagination_getx/app/routes/app_routes.dart';
import 'package:with_pagination_getx/app/views/home_page.dart';

class AppPages {
  static const Initial = Routes.Home;

  static final routes = [
    GetPage(
      name: Paths.Home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
