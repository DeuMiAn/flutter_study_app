import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/controller/root_controller.dart';
import 'package:flutter_study_app/src/pages/explore/explore_detail_page.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  Widget _list() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            20,
            (index) => Container(
              margin: const EdgeInsets.all(8),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget _categoryMenu(BuildContext context) {
    return Wrap(
      children: [
        GestureDetector(
          onTap: () {
            // Get.to(const ExploreDetailPage());
            RootController.to.setCategoryPage(true);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExploreDetailPage(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 30,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_categoryMenu(context), Expanded(child: _list())],
    );
  }
}
