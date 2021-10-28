import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt _count = 0.obs;

  int get count {
    if (_count.value < 0) {
      return 0;
    }
    return _count.value;
  }

  set count(int v) {
    _count.value = v;
  }

  bool get isBigInt {
    if (_count.value >= 10) {
      return true;
    }
    return false;
  }

  increment() {
    _count++;
  }
}
