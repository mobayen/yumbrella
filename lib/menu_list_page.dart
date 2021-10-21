import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/components/menus/menu_item_brief.dart';
import 'package:yumbrella/components/menus/not_published_menu.dart';
import 'package:yumbrella/menu_controller.dart';
import 'package:yumbrella/models/menu.dart';

class MenuListPage extends StatelessWidget {
  MenuListPage({
    Key? key,
    this.published = true,
  }) : super(key: key);

  final bool published;

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final MenuController menus = Get.find();

  @override
  Widget build(BuildContext context) {
    List<Menu> allMenus = menus.all();
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Menu list (clicks: ${menus.count})")),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: allMenus.length,
        itemBuilder: (BuildContext context, int index) {
          Menu aMenu = allMenus[index];
          // if (menus.theMenus[index].isPublic) {
          if (aMenu.isPublic) {
            return MenuItemBrief(theMenu: aMenu);
          } else {
            return const NotPublishedMenu();
          }
        },
      ),
    );
  }
}
