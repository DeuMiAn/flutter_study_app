import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            20,
            (index) => GestureDetector(
              onTap: () {
                Get.toNamed('/detailPage');
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
