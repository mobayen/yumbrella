import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/menu_controller.dart';
import 'package:yumbrella/menu_list_page.dart';
import 'package:yumbrella/menu_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final MenuController menus = Get.put(MenuController());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(
        title: Obx(() => Text("Clicks: ${menus.count}")),
        backgroundColor: Colors.pink,
      ),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            child: const Text("Go to Menu page"),
            onPressed: () => Get.to(MenuPage()),
          ),
          ElevatedButton(
            child: const Text("Go to Menu list page"),
            onPressed: () => Get.to(MenuListPage()),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: menus.increment,
      ),
    );
  }
}
