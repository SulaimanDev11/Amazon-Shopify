import 'package:amazone_shopify/app/modules/sales/views/widgets/widgets_fun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:get/get.dart';
import '../controllers/sales_controller.dart';

class SalesView extends GetView<SalesController> {
  ReusableFunction funObject = ReusableFunction();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Sales of Amazon'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: 'Monthly',
                    iconEnabledColor: Color(0xffEB6134),
                    items: <String>['Daily', 'Weekly', 'Monthly', 'Yearly']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
            // SizedBox(height: Get.height * 0.1),
            Container(
              height: Get.height * 0.5,
              child: SfCartesianChart(
                borderColor: Color(0xffEB6134),
                // plotAreaBackgroundColor: Color(0xffEB6134),
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Jan', 60),
                        SalesData('Feb', 120),
                        SalesData('Mar', 45),
                        SalesData('Apr', 125),
                        SalesData('May', 70),
                        SalesData('Jun', 50),
                        SalesData('Jul', 90),
                        SalesData('Aug', 110),
                        SalesData('Sep', 130),
                        SalesData('Oct', 90),
                        SalesData('Nov', 80),
                        SalesData('Dec', 100),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales)
                ],
              ),
            ),
            CusButton(
                title: 'Email',
                color: 0xffF8D8CE,
                onTap: () {
                  funObject.showEmailDialog();
                }),
            CusButton(
                title: 'Chat Us',
                color: 0xff232121,
                onTap: () {
                  funObject.showChatDialog();
                }),
            CusButton(
                title: 'Invoice',
                color: 0xffF8D8CE,
                onTap: () {
                  funObject.showInvoiceDialog();
                }),
          ],
        ),
      ),
    );
  }
}

class CusButton extends StatelessWidget {
  CusButton({
    required this.color,
    required this.onTap,
    required this.title,
  });
  final String title;
  final int color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0.w, vertical: 6.h),
          width: Get.width,
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xffEB6134),
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
