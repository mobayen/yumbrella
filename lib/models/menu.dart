class Menu {
  String _title = '';
  String? _ingredients;
  double? _price;

  Menu(String title, {String? ingredients, double? price}) {
    _title = title;
    _ingredients = ingredients;
    _price = price;
  }

  // void dummyMenu

  String get title {
    return _title.toUpperCase();
  }

  String get ingredients {
    return _ingredients ?? '';
  }

  double get price {
    return _price ?? 0;
  }

  bool get isFree {
    bool isFree = false;

    // NOTE: if the price was NULL that does not meen it is a FREE item
    // isFree = false;

    // But, if the price been set to zero, then we can consider the item as FREE
    if (price == 0) {
      isFree = true;
    }

    return isFree;
  }
}
