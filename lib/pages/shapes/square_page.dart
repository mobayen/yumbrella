import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:yumbrella/models/magic_square.dart';

class SquarePage extends StatelessWidget {
  const SquarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MagicSquare ms = Get.put(MagicSquare(length: 12.3));

    return Scaffold(
      appBar: AppBar(
        title: const Text('it suppose to be a Square'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text('the magic Square has background and forground colors'),
          Text('is it a square?: ${ms.isSquare}'),
          Text('the length: ${ms.length}'),
          Text('the width: ${ms.width}'),
          Text('the area: ${ms.area()}'),
          Text('the perimeter: ${ms.perimeter()}'),
          Text('the colorx: ${ms.colorx}'),
          Text('the shape bg: ${ms.bg}'),
          ElevatedButton(
            onPressed: () {
              ms.length = 3.3;
              print(ms.area());
            },
            child: Text('set the length to 3.3'),
          ),
        ],
      ),
    );
  }
}
