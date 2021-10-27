import 'package:yumbrella/contracts/black_white.dart';
import 'package:yumbrella/contracts/shapes/rectangle.dart';

class MagicRectangle implements Rectangle, BlackWhite {
  late double _length;
  late double _width;
  late bool _isSquare = false;
  late int _grayShade = 400;

  MagicRectangle({
    required double length,
    required double width,
    bool isSquare = false,
    int grayShade = 400,
  }) {
    _length = length;
    _width = width;
    _isSquare = isSquare;
    _grayShade = grayShade;

    // // if it is a square, length and width must have the same value
    // if (isSquare) {
    //   _length = _width;
    // }
  }

  /// the isSquare setter does not work for a Square
  @override
  set isSquare(bool v) {
    // // if it is a square, length and width must have the same value
    // if (v) {
    //   _length = _width;
    // }
    _isSquare = v;
  }

  @override
  bool get isSquare {
    return _isSquare;
  }

  /// setter and getter: length
  @override
  set length(double v) {
    _length = v;
  }

  @override
  double get length {
    return _length;
  }

  /// setter and getter: width
  @override
  double get width {
    return _width;
  }

  @override
  set width(double v) {
    _width = v;
  }

  // grey shade getter and setter

  @override
  int get grayShade {
    return _grayShade;
  }

  @override
  set grayShade(int shade) {
    _grayShade = shade;
  }

  /// calculates the area
  @override
  double area() {
    return _length * _width;
  }

  /// calculates the perimiter
  @override
  double perimeter() {
    return 2 * (_length + _width);
  }
}
