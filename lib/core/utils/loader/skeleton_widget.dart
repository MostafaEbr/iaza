import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonWidget extends StatelessWidget {
  final Widget widget;
  const SkeletonWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child:widget
    );
  }
}
