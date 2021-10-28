import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt _count = 0.obs;
  bool isBigInt = false;

  RxInt get count {
    return _count;
  }

  set count(RxInt v) {
    if (v.value > 10) {
      isBigInt = true;
    }

    _count = v;
  }

  increment() => _count++;
}
