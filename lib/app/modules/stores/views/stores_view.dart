import 'package:amazone_shopify/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/stores_controller.dart';
import 'widgets/stores_card.dart';

class StoresView extends GetView<StoresController> {
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
                          StoreCard(
                              image: 'assets/images/amazon.png',
                              title: 'Jarett Amazon',
                              color: 0xffF8D8CE,
                              onTap: () {
                                Get.toNamed(Routes.SALES);
                              }),
                          SizedBox(width: 5.w),
                          StoreCard(
                              image: 'assets/images/walmart.png',
                              title: 'Jarett Walmart',
                              color: 0xff232121,
                              onTap: () {
                                Get.toNamed(Routes.SALES);
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          StoreCard(
                              image: 'assets/images/ebay.png',
                              color: 0xff232121,
                              title: 'Jarett Ebay',
                              onTap: () {
                                Get.toNamed(Routes.SALES);
                              }),
                          SizedBox(width: 5.w),
                          StoreCard(
                              image: 'assets/images/watch.png',
                              title: 'FB Marketplace',
                              color: 0xffF8D8CE,
                              onTap: () {
                                Get.toNamed(Routes.SALES);
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
