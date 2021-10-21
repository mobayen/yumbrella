import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/menu_controller.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final MenuController menus = Get.find();

  @override
  Widget build(BuildContext context) {
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${menus.count}")));
  }
}
