import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddButton extends StatelessWidget {
  const AddButton({required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:
            EdgeInsets.symmetric(vertical: 5.h, horizontal: Get.width * 0.25),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.h),
        decoration: BoxDecoration(
            color: Color(0xffEB6134), borderRadius: BorderRadius.circular(3.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
