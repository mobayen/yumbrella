// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumbrella/models/menu.dart';

class MenuController extends GetxController {
  var count = 0.obs;
  increment() => count++;

  final List<Menu> _theMenus = [
    Menu(
      'Sesame Cucumber Salad',
      ingredients:
          'Marinated tofu, Fresno chili, honey roasted peanuts, fried shallots, sesame mint yogurt',
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.",
      price: 13.456,
      isPublic: true,
    ),
    Menu(
      'Pink Flamingos',
      ingredients:
          'potato vodka, pomegranate, hibiscus, lychee, kumquat, lime, clarified with coconut milk, over crushed ice',
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsum odit, officia aliquam a culpa repellat nostrum tempore delectus quos architecto dolores, non debitis illum? Id ducimus voluptatum quos aspernatur mollitia.",
      price: 8.1234,
      isPublic: true,
    ),
    Menu(
      'Oysters on half shel',
      ingredients:
          'Dry-Farmed Early Girl Tomato, Burnt Sugar, Black Olive, Thai Basil',
      description:
          "QVEVRI AGED ROSÉ Johannes Zillinger \"Numen Rosé\"Niederösterreich, AUT 2018, Sankt Laurent",
      price: 29.9876,
      isPublic: true,
    ),
    Menu(
      'Chopped Salad',
      ingredients:
          'Mixed garden lettuce, blueberries, navel orange, green apple, goji berries, toasted quinoa, sherry dijon vinaigrette',
      description: "",
      price: 12.00,
      isPublic: true,
    ),
  ];

  void add() {
    // add a new menu
  }

  Menu find(id) {
    // pull a menu item from a source (array, DB, API, ...)

    // create a Menu object

    return _theMenus[id];
  }

  List<Menu> all() {
    // to test if the method works
    _theMenus[2].unPpublish();

    print(_theMenus);

    return _theMenus;
  }

  void updateMenu(id) {
    // find the menu
    Menu myMenu = _theMenus[id];

    // TODO: decide if the user can update the menu item?!

    myMenu.title = 'XXX an updated title XXX';

    // TODO: and then the model saves the new values into the DB
    // myMenu.save();
  }
}
