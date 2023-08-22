import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/controller/root_controller.dart';
import 'package:flutter_study_app/src/pages/explore/explore.dart';
import 'package:flutter_study_app/src/pages/home/home.dart';
import 'package:flutter_study_app/src/pages/setting/setting.dart';
import 'package:get/get.dart';

class Root extends GetView<RootController> {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            leading: controller.isCategoryPageOpen.value
                ? GestureDetector(
                    onTap: controller.back,
                    child: const Icon(Icons.arrow_back_ios),
                  )
                : Container(),
            centerTitle: true,
            title: controller.isCategoryPageOpen.value
                ? const Text("음악샘플")
                : const Text("네비게이션 라우트 샘플"),
          ),
          body: IndexedStack(
            index: controller.rootPageIndex.value,
            children: [
              const Home(),
              Navigator(
                key: controller.navigatorKey,
                onGenerateRoute: (routeSettings) {
                  return MaterialPageRoute(
                    builder: (context) => const Explore(),
                  );
                },
              ),
              // Explore(),
              const Setting(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.rootPageIndex.value,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: controller.changeRootPageIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: 'home',
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  color: Colors.grey,
                ),
                label: 'explore',
                activeIcon: Icon(
                  Icons.explore,
                  color: Colors.blue,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                label: 'settings',
                activeIcon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
