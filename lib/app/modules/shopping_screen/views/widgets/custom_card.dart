import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.onTap,
    required this.createdBy,
    required this.storeName,
  });
  final String createdBy;
  final String storeName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: Get.height * 0.25,
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  activeColor: Color(0xffEB6134),
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Store'),
                Container(
                  child: Row(
                    children: [
                      Text('$storeName | '),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'View Store',
                          style: TextStyle(color: Color(0xffEB6134)),
                        ),
                      ),
                      SizedBox(width: Get.width * 0.03),
                      Icon(Icons.remove_red_eye, color: Color(0xffEB6134))
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Create by'),
                Text('$createdBy'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Status'),
                Container(
                  height: Get.height * 0.04,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                      child: Text(
                    'Active',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Actions'),
                Icon(
                  Icons.arrow_drop_down_circle_rounded,
                  color: Color(0xffEB6134),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
