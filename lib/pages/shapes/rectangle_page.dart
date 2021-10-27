import 'package:flutter/material.dart';
import 'package:yumbrella/models/magic_rectangle.dart';

class RectanglePage extends StatelessWidget {
  const RectanglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MagicRectangle ms = MagicRectangle(length: 12.3, width: 3.5, grayShade: 12);

    return Scaffold(
      appBar: AppBar(
        title: const Text('it suppose to be a Square'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text('the magic rectangle is a black&white shape'),
          Text('is it a square?: ${ms.isSquare}'),
          Text('the length: ${ms.length}'),
          Text('the width: ${ms.width}'),
          Text('the area: ${ms.area()}'),
          Text('the perimeter: ${ms.perimeter()}'),
          Text('the rectangle is a: gray[${ms.grayShade}]'),
        ],
      ),
    );
  }
}
