import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReusableFunction {
  Future<void> showChatDialog() async {
    return showDialog<void>(
      context: Get.context!,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: 'Type your message..',
                    contentPadding: EdgeInsets.all(15.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  minLines: 6,
                  maxLines: 6,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Send'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> showInvoiceDialog() async {
    return showDialog<void>(
      context: Get.context!,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invoice(2)'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jarett Automation:',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w900),
                    ),
                    Text('The charges for the month of january are \$150'),
                    SizedBox(height: Get.height * 0.02),
                    Text(
                      'Jarett Automation:',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w900),
                    ),
                    Text('The charges for the month of january are \$150'),
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> showEmailDialog() async {
    return showDialog<void>(
      context: Get.context!,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Email'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Inbox (3)'), Text('Sent Item (2)')]),
                    SizedBox(height: Get.height * 0.02),
                    Text('Amazon:'),
                    Text('Order#'),
                    Text('10252-36 has been arrived'),
                    SizedBox(height: Get.height * 0.02),
                    Text('Ebay:'),
                    Text('Order#'),
                    Text('589457 has been shipped'),
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
