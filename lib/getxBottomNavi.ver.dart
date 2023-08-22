import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/controller/root_controller.dart';
import 'package:flutter_study_app/src/pages/home/detail_page.dart';
import 'package:flutter_study_app/src/root.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '바텀네비 X getX 콜라보',
      initialBinding: BindingsBuilder(() {
        Get.put(RootController());
      }),
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Root(),
      getPages: [GetPage(name: '/detailPage', page: () => const DetailPage())],
    );
  }
}
