import 'package:flutter/material.dart';

// Extension for creating padding easily
extension PaddingExtension on num {
  // Uniform padding on all sides
  EdgeInsets get paddingAll => EdgeInsets.all(toDouble());

  // Padding with only left and right padding
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: toDouble());

  // Padding with only top and bottom padding
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: toDouble());

  // Padding with custom left, top, right, and bottom
  EdgeInsets customPadding({double left = 0.0, double top = 0.0, double right = 0.0, double bottom = 0.0}) {
    return EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    );
  }
}