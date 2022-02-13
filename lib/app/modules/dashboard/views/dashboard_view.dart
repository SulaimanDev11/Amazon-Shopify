import 'dart:ui';

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
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      height: Get.height * 0.2,
                      // width: ,
                    ),
                  ),
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
                              onTap: () {}),
                          SizedBox(width: 5.w),
                          Category(
                              icon: Icons.shopping_bag,
                              title: 'STORES',
                              onTap: () {}),
                        ],
                      ),
                      Row(
                        children: [
                          Category(
                              icon: Icons.group, title: 'USERS', onTap: () {}),
                          SizedBox(width: 5.w),
                          Category(
                              icon: Icons.payment,
                              title: 'PAYMENTS',
                              onTap: () {}),
                        ],
                      ),
                      Row(
                        children: [
                          Category(
                              icon: Icons.group,
                              title: 'REFERRALS',
                              onTap: () {}),
                          SizedBox(width: 5.w),
                          Category(
                              icon: Icons.attach_money,
                              title: 'INVOICES',
                              onTap: () {}),
                        ],
                      ),
                      Row(
                        children: [
                          Category(
                              icon: Icons.email, title: 'EMAIL', onTap: () {}),
                          SizedBox(width: 5.w),
                          Category(
                              icon: Icons.chat, title: 'CHAT', onTap: () {}),
                        ],
                      ),
                      Row(
                        children: [
                          Category(
                              icon: Icons.all_inclusive_outlined,
                              title: 'CUSTOMER SERVICE',
                              onTap: () {
                                Get.toNamed(Routes.SHOPPING_SCREEN);
                              }),
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