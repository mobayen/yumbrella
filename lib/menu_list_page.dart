import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/menu_controller.dart';

class MenuListPage extends StatelessWidget {
  MenuListPage({Key? key}) : super(key: key);

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final MenuController menus = Get.find();

  @override
  Widget build(BuildContext context) {
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Clicks: ${menus.count}")),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text('a list of menus'),
      ),
    );
  }
}
