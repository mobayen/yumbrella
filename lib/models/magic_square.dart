import 'package:get/get.dart';
import 'package:yumbrella/contracts/colorful.dart';
import 'package:yumbrella/contracts/shapes/rectangle.dart';

class MagicSquare extends GetxController implements Rectangle, Colorful {
  /// it has to stay 'true' always
  final bool _isSquare = true;

  late RxDouble _length;
  late RxDouble _width;

  late String _background;
  late String _forground;

  MagicSquare({
    required double length,
    background = 'blue',
    forground = 'yellow',
  }) {
    _length = length.obs;
    _width = length.obs;
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
  @override
  set length(double v) {
    /// both width and length get changed at the same time
    _width.value = v;
    _length.value = v;
  }

  @override
  double get length {
    return _length.value;
  }

  /// setter and getter: width
  @override
  double get width {
    return _width.value;
  }

  /// begause it is a square, both width nd length get changed at the same time
  @override
  set width(double v) {
    _width.value = v;
    _length.value = v;
  }

  /// calculates the area
  @override
  double area() {
    return _length.value * _width.value;
  }

  /// calculates the perimiter
  @override
  double perimeter() {
    return 2 * (_length.value + _width.value);
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
