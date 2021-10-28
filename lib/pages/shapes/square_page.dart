import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:yumbrella/models/magic_square.dart';

//  SquarePage

class SquarePage extends StatelessWidget {
  const SquarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MagicSquare ms = Get.put(MagicSquare(length: 12.3));
    TextEditingController _textFormField = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('it suppose to be a Square'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text('the magic Square has background and forground colors'),
          Text('is it a square?: ${ms.isSquare}'),
          Text('the length:'),
          Obx(() => Text(ms.length.toString())),
          Text('the width:'),
          Obx(() => Text(ms.width.toString())),
          Text('the area:'),
          Obx(() => Text(ms.area().toString())),
          Text('the perimeter:'),
          Obx(() => Text(ms.perimeter().toString())),
          Text('the forground: ${ms.forground}'),
          Text('the shape background: ${ms.background}'),
          ElevatedButton(
            onPressed: () {
              ms.length = double.parse(_textFormField.text);
            },
            child: const Text('set the new length'),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: _textFormField,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter a number',
              ),
            ),
          )
        ],
      ),
    );
  }
}
