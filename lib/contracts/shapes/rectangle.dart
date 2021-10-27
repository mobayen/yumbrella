import 'package:yumbrella/contracts/shapes/shape.dart';

abstract class Rectangle extends Shape {
  /// the length getter
  double get length;

  /// the length setter
  set length(double v);

  /// the width getter
  double get width;

  /// the width setter
  set width(double v);

  /// the isSquare getter
  bool get isSquare;

  /// the isSquare setter
  set isSquare(bool v);
}
