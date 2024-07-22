import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Flutter_GetX_Un-named_Routing/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter GetX Un-named Routing 1'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                var a = await Get.to(
                  arguments: 'this is red color',
                  transition: Transition.rightToLeftWithFade,
                  () => SecondScreen(),
                );
                print(a);
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red.withOpacity(0.2),
                ),
                child: Text('this is red color'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
