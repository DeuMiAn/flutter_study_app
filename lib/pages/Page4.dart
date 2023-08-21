import 'package:flutter/material.dart';
import 'package:flutter_study_app/pages/Home.dart';
import 'package:flutter_study_app/pages/Page2.dart';
import 'package:flutter_study_app/pages/Page3.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('page4 입니다'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(Home.indexMove(homeIndex: 2));
                  },
                  child: const Text('Page1 이동')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const Page2());
                  },
                  child: const Text('Page2 이동')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const Page3());
                  },
                  child: const Text('Page3 이동')),
            ],
          )
        ],
      )),
    );
  }
}
