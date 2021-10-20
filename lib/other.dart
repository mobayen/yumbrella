import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/controller.dart';

class Other extends StatelessWidget {
  Other({Key? key}) : super(key: key);

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
