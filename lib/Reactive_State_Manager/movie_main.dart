import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Reactive_State_Manager/movie.dart';

class MovieMain extends StatelessWidget {
  const MovieMain({super.key});

  @override
  Widget build(BuildContext context) {
    var movie = Movie();

    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('${movie.name}'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                movie.name.value = 'no';
              },
              child: Text('Change'),
            ),
          ],
        ),
      ),
    );
  }
}
