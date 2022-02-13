import 'package:get/get.dart';

import '../controllers/shopping_screen_controller.dart';

class ShoppingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppingScreenController>(
      () => ShoppingScreenController(),
    );
  }
}
