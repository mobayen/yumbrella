import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:yumbrella/models/magic_square.dart';

class SquarePage extends StatefulWidget {
  const SquarePage({Key? key}) : super(key: key);

  @override
  _SquarePageState createState() => _SquarePageState();
}

class _SquarePageState extends State<SquarePage> {
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
          Text('the length: ${ms.length}'),
          Text('the width: ${ms.width}'),
          Text('the area: ${ms.area()}'),
          Text('the perimeter: ${ms.perimeter()}'),
          Text('the forground: ${ms.forground}'),
          Text('the shape background: ${ms.background}'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                ms.length = double.parse(_textFormField.text);
              });
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
