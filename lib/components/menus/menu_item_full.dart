import 'package:flutter/material.dart';
import 'package:yumbrella/models/menu.dart';
import 'package:yumbrella/utilities/constants.dart';

class MenuItemFull extends StatelessWidget {
  const MenuItemFull({
    Key? key,
    required this.theMenu,
  }) : super(key: key);

  final Menu theMenu;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.restaurant_menu,
            size: 50,
          ),
          Text(
            theMenu.title,
            textAlign: TextAlign.center,
            style: kMenuTitleTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            theMenu.priceFormatted,
            textAlign: TextAlign.center,
            style: kMenuPriceTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            theMenu.ingredients,
            textAlign: TextAlign.center,
            style: kIngredientTextStyle,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: Text(
              theMenu.description,
              // textAlign: TextAlign.center,
              // style: kIngredientTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
