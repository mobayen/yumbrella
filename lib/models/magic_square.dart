import 'package:yumbrella/contracts/colorful.dart';
import 'package:yumbrella/contracts/shapes/rectangle.dart';

class MagicSquare implements Rectangle, Colorful {
  /// it has to stay 'true' always
  final bool _isSquare = true;

  late double _length;
  late double _width;

  late String _background;
  late String _forground;

  MagicSquare({
    required double length,
    background = 'blue',
    forground = 'yellow',
  }) {
    _length = length;
    _width = length;
    _background = background;
    _forground = forground;
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
  set forground(String v) {
    _forground = v;
  }

  // }

  // /// the color Getter
  @override
  String get forground {
    return _forground;
  }

  // /// background Setter
  @override
  set background(String v) {
    _background = v;
  }

  /// background Getter
  @override
  String get background {
    return _background;
  }
}
