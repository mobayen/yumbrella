class Menu {
  String _title = '';
  double? _price;
  String? _ingredients;
  String? _description;

  Menu(
    String title, {
    String? ingredients,
    double? price,
    String? description,
  }) {
    _title = title;
    _price = price;
    _ingredients = ingredients;
    _description = description;
  }

  String get title {
    return _title.toUpperCase();
  }

  String get priceFormatted {
    double out = _price ?? 0;

    return '\$' + out.toStringAsFixed(2);
  }

  /// the exact amount of the price
  double get price {
    return _price ?? 0.0;
  }

  String get ingredients {
    return _ingredients ?? '';
  }

  String get description {
    return _description ?? '';
  }

  bool get isFree {
    bool isFree = false;

    // NOTE: if the price was NULL that does not meen it is a FREE item
    // isFree = false;

    // But, if the price been set to zero, then we can consider the item as FREE
    if (_price == 0) {
      isFree = true;
    }

    return isFree;
  }
}
