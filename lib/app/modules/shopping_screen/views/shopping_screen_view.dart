import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/shopping_screen_controller.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_card.dart';

class ShoppingScreenView extends GetView<ShoppingScreenController> {
  Rx<int> selectedIndex = 0.obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

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
                    margin:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
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
                              activeColor: Color(0xffEB6134),
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text('Select All')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Color(0xffEB6134),
                              value: false,
                              onChanged: (value) {},
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                iconEnabledColor: Color(0xffEB6134),
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
                        CustomCard(
                          createdBy: 'Admintr',
                          storeName: 'VertigoShop',
                          onTap: () {},
                        ),
                        CustomCard(
                          createdBy: 'Admintr',
                          storeName: 'KRM Goods',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.attach_money),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.note_add_outlined),
                label: '',
              ),
            ],
            selectedItemColor: Color(0xffEB6134),
            unselectedItemColor: Colors.grey,
            currentIndex: selectedIndex.value,
            onTap: (int index) {
              selectedIndex.value = index;
            },
          ),
        ));
  }
}
