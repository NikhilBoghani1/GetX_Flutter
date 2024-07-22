import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Obx"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${count.value}",
                style: TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                count++;
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Text(
                  "increment",
                  style: TextStyle(fontSize: 19),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
