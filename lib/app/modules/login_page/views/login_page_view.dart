import 'package:amazone_shopify/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: Get.height * 0.2,
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/header.jpg'))),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Text(
                    'WELCOME',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 18.sp),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Text('Sign to continue to Jarett Wesley Automation'),
                ],
              ),
            ),
            Divider(thickness: 2.h, color: Colors.grey[300]),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color(0xffEB6134),
                        size: Get.height * 0.035,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: 'Enter username',
                      contentPadding: EdgeInsets.all(15.h),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: Get.height * 0.08),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xffEB6134),
                        size: Get.height * 0.03,
                      ),
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xffEB6134),
                        size: Get.height * 0.035,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: 'Enter password',
                      contentPadding: EdgeInsets.all(15.h),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              height: Get.height * 0.12,
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8.w),
                    height: Get.height * 0.04,
                    width: Get.height * 0.04,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                  ),
                  Text('I\'m not a robot'),
                  Expanded(
                      child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(image: AssetImage('assets/images/reCaptcha.png'))
                      ],
                    ),
                  ))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.DASHBOARD);
              },
              child: Container(
                height: Get.height * 0.06,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(50.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LOG IN',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: Get.width * 0.02),
                    Icon(Icons.login, color: Colors.grey),
                  ],
                ),
              ),
            ),
            GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account '),
                    Text(
                      'Click Here',
                      style: TextStyle(
                          color: Colors.blue[900], fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            GestureDetector(
              onTap: () {},
              child: Text('Forgot your password'),
            )
          ],
        ),
      ),
    ));
  }
}
