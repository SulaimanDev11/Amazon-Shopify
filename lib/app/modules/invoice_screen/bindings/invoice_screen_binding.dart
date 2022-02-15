import 'package:get/get.dart';

import '../controllers/invoice_screen_controller.dart';

class InvoiceScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvoiceScreenController>(
      () => InvoiceScreenController(),
    );
  }
}
