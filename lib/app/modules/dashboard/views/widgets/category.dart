import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({
    required this.icon,
    required this.onTap,
    required this.title,
    required this.color,
  });
  final VoidCallback onTap;
  final String title;
  final IconData icon;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: Get.height * 0.2,
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: BorderRadius.circular(3.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Color(0xffEB6134),
                size: 35.h,
              ),
              SizedBox(height: Get.height * 0.01),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEB6134),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
