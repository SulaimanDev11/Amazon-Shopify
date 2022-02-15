import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StoreCard extends StatelessWidget {
  StoreCard({
    required this.image,
    required this.onTap,
    required this.title,
    required this.color,
  });
  final VoidCallback onTap;
  final String title;
  final String image;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: Get.height * 0.35,
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
              Expanded(child: Image(image: AssetImage(image))),
              SizedBox(height: Get.height * 0.01),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
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
