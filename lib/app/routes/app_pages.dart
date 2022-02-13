import 'package:get/get.dart';

import 'package:amazone_shopify/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:amazone_shopify/app/modules/dashboard/views/dashboard_view.dart';
import 'package:amazone_shopify/app/modules/home/bindings/home_binding.dart';
import 'package:amazone_shopify/app/modules/home/views/home_view.dart';
import 'package:amazone_shopify/app/modules/login_page/bindings/login_page_binding.dart';
import 'package:amazone_shopify/app/modules/login_page/views/login_page_view.dart';
import 'package:amazone_shopify/app/modules/shopping_screen/bindings/shopping_screen_binding.dart';
import 'package:amazone_shopify/app/modules/shopping_screen/views/shopping_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING_SCREEN,
      page: () => ShoppingScreenView(),
      binding: ShoppingScreenBinding(),
    ),
  ];
}
