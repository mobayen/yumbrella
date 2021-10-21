import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/components/menus/menu_item_brief.dart';
import 'package:yumbrella/menu_controller.dart';
import 'package:yumbrella/models/menu.dart';

class MenuListPage extends StatelessWidget {
  MenuListPage({Key? key}) : super(key: key);

  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final MenuController menus = Get.find();

  List<Menu> theMenus = [
    Menu(
      'Pink Flamingos',
      ingredients:
          'potato vodka, pomegranate, hibiscus, lychee, kumquat, lime, clarified with coconut milk, over crushed ice',
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.",
      price: 8.1234,
    ),
    Menu(
      'Oysters on half shel',
      ingredients:
          'Dry-Farmed Early Girl Tomato, Burnt Sugar, Black Olive, Thai Basil',
      description:
          "QVEVRI AGED ROSÉ Johannes Zillinger \"Numen Rosé\"Niederösterreich, AUT 2018, Sankt Laurent",
      price: 29.9876,
    ),
    Menu(
      'Chopped Salad',
      ingredients:
          'Mixed garden lettuce, blueberries, navel orange, green apple, goji berries, toasted quinoa, sherry dijon vinaigrette',
      description: "",
      price: 12.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Menu list (clicks: ${menus.count})")),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: theMenus.length,
        itemBuilder: (BuildContext context, int index) {
          return MenuItemBrief(theMenu: theMenus[index]);
        },
      ),
    );
  }
}
