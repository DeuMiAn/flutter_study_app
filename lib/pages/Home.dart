import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

class Home extends StatefulWidget {
  final int homeIndex;
  const Home({super.key}) : homeIndex = -1;
  Home.indexMove({super.key, required this.homeIndex}) {
    Get.put(Controller());
    if (homeIndex > -1) {
      Controller.to.changeIndex(homeIndex);
    }
    print("작동");
  }
  static List<Widget> tabPages = <Widget>[
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // changeIndex();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
      ),
      body: Obx(
        () => SafeArea(child: Home.tabPages[Controller.to.selectedIndex.value]),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends GetView<Controller> {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          selectedItemColor: context.theme.colorScheme.onBackground,
          unselectedItemColor: context.theme.colorScheme.onSurfaceVariant,
          backgroundColor: context.theme.colorScheme.background,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'tap1',
              icon: Text(
                '1페이즈',
                style: TextStyle(
                    color: controller.selectedIndex.value == 0
                        ? Colors.black
                        : Colors.grey),
              ),
            ),
            BottomNavigationBarItem(
              label: 'tap2',
              icon: Text(
                '2페이즈',
                style: TextStyle(
                    color: controller.selectedIndex.value == 1
                        ? Colors.black
                        : Colors.grey),
              ),
            ),
            BottomNavigationBarItem(
              label: 'tap3',
              icon: Text(
                '3페이즈',
                style: TextStyle(
                    color: controller.selectedIndex.value == 2
                        ? Colors.black
                        : Colors.grey),
              ),
            ),
          ]),
    );
  }
}
