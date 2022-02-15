import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/invoice_screen_controller.dart';

class InvoiceScreenView extends GetView<InvoiceScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InvoiceScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InvoiceScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
