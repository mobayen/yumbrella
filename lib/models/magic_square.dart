import 'package:yumbrella/contracts/colorful.dart';
import 'package:yumbrella/contracts/shapes/rectangle.dart';

class MagicSquare implements Rectangle, Colorful {
  /// it has to stay 'true' always
  final bool _isSquare = true;

  late double _length;
  late double _width;

  late String _bg;
  late String _colorx;

  MagicSquare({
    required double length,
    bg = 'blue',
    colorx = 'yellow',
  }) {
    _length = length;
    _width = length;
    _bg = bg;
    _colorx = colorx;
  }

  /// the isSquare setter does not work for a Square
  @override
  set isSquare(bool v) {}

  @override
  bool get isSquare {
    return _isSquare;
  }

  /// setter and getter: length
  /// begause it is a square, both width nd length get changed at the same time
  @override
  set length(double v) {
    _width = v;
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

  /// begause it is a square, both width nd length get changed at the same time
  @override
  set width(double v) {
    _width = v;
    _length = v;
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

  // /// the color Setter
  @override
  set colorx(String v) {
    _colorx = v;
  }

  // }

  // /// the color Getter
  @override
  String get colorx {
    return _colorx;
  }

  // /// background Setter
  @override
  set bg(String v) {
    _bg = v;
  }

  /// background Getter
  @override
  String get bg {
    return _bg;
  }
}
