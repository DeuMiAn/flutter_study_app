import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  final RxInt selectedIndex = 0.obs; //현재 탭 아이템 번호

  int _x = 0;
  int get x => _x;

  void increment() {
    _x++;
    update();
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
