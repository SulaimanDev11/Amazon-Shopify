import 'package:amazone_shopify/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';
import 'widgets/category.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.2,
                  width: Get.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/logo.jpg'))),
                ),
                Container(
                  height: Get.height - Get.height * 0.26,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Category(
                              icon: Icons.attach_money,
                              title: 'SALES',
                              color: 0xffF8D8CE,
                              onTap: () {}),
                          SizedBox(width: 5.w),
                          Category(
                              icon: Icons.shopping_bag,
                              title: 'STORES',
                              color: 0xff232121,
                              onTap: () {
                                Get.toNamed(Routes.SHOPPING_SCREEN);
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Category(
                              icon: Icons.group,
                              color: 0xff232121,
                              title: 'USERS',
                              onTap: () {}),
                          SizedBox(width: 5.w),
                          Category(
                              icon: Icons.attach_money,
                              title: 'INVOICES',
                              color: 0xffF8D8CE,
                              onTap: () {}),
                        ],
                      ),
                      Row(
                        children: [
                          Category(
                              icon: Icons.email,
                              title: 'EMAIL',
                              color: 0xffF8D8CE,
                              onTap: () {}),
                          SizedBox(width: 5.w),
                          Category(
                              icon: Icons.chat,
                              title: 'CHAT US',
                              color: 0xff232121,
                              onTap: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
