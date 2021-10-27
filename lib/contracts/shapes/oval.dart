import 'package:yumbrella/contracts/shapes/shape.dart';

abstract class Oval extends Shape {
  /// the minorRadius getter
  double get minorRadius;

  /// the minorRadius setter
  set minorRadius(double v);

  /// the majorRadius getter
  double get majorRadius;

  /// the majorRadius setter
  set majorRadius(double v);

  /// the isCircle getter
  bool get isCircle;

  /// the isCircle setter
  set isCircle(bool v);
}
