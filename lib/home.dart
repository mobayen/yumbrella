import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/controller.dart';
import 'package:yumbrella/other.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Other"),
          onPressed: () => Get.to(Other()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: c.increment,
      ),
    );
  }
}
