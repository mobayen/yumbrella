import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/components/menus/menu_item_full.dart';
import 'package:yumbrella/menu_controller.dart';
import 'package:yumbrella/models/menu.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final MenuController menus = Get.find();

  Menu theMenu = Menu(
    'Pink Flamingos',
    ingredients:
        'potato vodka, pomegranate, hibiscus, lychee, kumquat, lime, clarified with coconut milk, over crushed ice',
    description:
        "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.",
    price: 8.1234,
  );

  @override
  Widget build(BuildContext context) {
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
