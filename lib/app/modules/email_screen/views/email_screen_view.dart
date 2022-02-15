import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/email_screen_controller.dart';

class EmailScreenView extends GetView<EmailScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EmailScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EmailScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
