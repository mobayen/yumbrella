class Menu {
  bool? _isPublic;
  bool? _isUpdated;
  String _title = '';
  double? _price;
  String? _ingredients;
  String? _description;

  Menu(
    String title, {
    bool? isPublic,
    String? ingredients,
    double? price,
    String? description,
  }) {
    _title = title;
    _price = price;
    _ingredients = ingredients;
    _description = description;
    _isPublic = isPublic;

    // the default is false
    _isUpdated = false;
  }

  String get title {
    return _title.toUpperCase();
  }

  set title(String newTitle) {
    print(_title);
    print(newTitle);

    // mark the menu item as updated
    _isUpdated = true;

    _title = newTitle;
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

  bool get isPublic {
    return _isPublic ?? false;
  }

  bool get isUpdated {
    return _isUpdated ?? false;
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

  /// make the menu open to public visitors
  void unPpublish() {
    _isPublic = false;
  }
}
