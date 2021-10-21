import 'package:flutter/material.dart';
import 'package:yumbrella/models/menu.dart';

class MenuItemBrief extends StatelessWidget {
  const MenuItemBrief({
    Key? key,
    required this.theMenu,
  }) : super(key: key);

  final Menu theMenu;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: const Icon(Icons.restaurant_menu),
        title: Text(theMenu.title),
        subtitle: Text(theMenu.ingredients),
        tileColor: theMenu.isUpdated ? Colors.red : Colors.blue,
      ),
    );
  }
}
