import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/shopping_screen_controller.dart';

class ShoppingScreenView extends GetView<ShoppingScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AddButton(title: 'ADD A NEW STORE', onTap: () {}),
                  AddButton(title: 'IMPORT STORE', onTap: () {}),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.note_add),
                            SizedBox(width: Get.width * 0.1),
                            Icon(Icons.delete),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            TextField(
                                decoration:
                                    InputDecoration(hintText: 'Search')),
                            TextField(
                                decoration:
                                    InputDecoration(hintText: 'Status')),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Switch(
                            activeColor: Colors.orange,
                            value: true,
                            onChanged: (value) {},
                          ),
                          Text('Select All')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.orange,
                            value: false,
                            onChanged: (value) {},
                          ),
                          Expanded(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              iconEnabledColor: Colors.orange,
                              items: <String>[
                                'item A',
                                'item B',
                                'item C',
                                'item D'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          )
                        ],
                      ),
                      CustomCard(),
                      CustomCard(),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Checkbox(
                      //       activeColor: Colors.orange,
                      //       value: false,
                      //       onChanged: (value) {},
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text('Store'),
                      //     Container(
                      //       child: Row(
                      //         children: [
                      //           Text('KRM Goods | '),
                      //           Text(
                      //             'View Store',
                      //             style: TextStyle(color: Colors.orange),
                      //           ),
                      //           SizedBox(width: Get.width * 0.03),
                      //           Icon(Icons.remove_red_eye, color: Colors.orange)
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

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
                  activeColor: Colors.orange,
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
                      Text('VertigoShop | '),
                      Text(
                        'View Store',
                        style: TextStyle(color: Colors.orange),
                      ),
                      SizedBox(width: Get.width * 0.03),
                      Icon(Icons.remove_red_eye, color: Colors.orange)
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Create by'),
                Text('admintr'),
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
                  color: Colors.orange,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
            color: Colors.orange, borderRadius: BorderRadius.circular(3.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add),
            Text(title),
          ],
        ),
      ),
    );
  }
}
