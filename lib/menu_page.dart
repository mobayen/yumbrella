import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/components/menus/menu_item_full.dart';
import 'package:yumbrella/menu_controller.dart';
import 'package:yumbrella/models/menu.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final MenuController menus = Get.find();

  @override
  Widget build(BuildContext context) {
    Menu theMenu = menus.find(1);

    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Clicks: ${menus.count}")),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: MenuItemFull(theMenu: theMenu),
      ),
    );
  }
}
