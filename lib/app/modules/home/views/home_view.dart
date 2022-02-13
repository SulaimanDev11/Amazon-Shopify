import 'dart:async';

import 'package:amazone_shopify/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () => Get.offAndToNamed(Routes.LOGIN_PAGE));
    return Scaffold(
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}
