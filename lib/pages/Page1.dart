import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Page4.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('page1 입니다'),
          ElevatedButton(
              onPressed: () {
                Get.to(const Page4());
              },
              child: const Text("페이지4로"))
        ],
      )),
    );
  }
}
