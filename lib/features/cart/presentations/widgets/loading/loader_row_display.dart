import 'package:flutter/material.dart';
import '../../../../../core/utils/colors/app_color.dart';
import '../../../../../core/utils/loader/skeleton_widget.dart';

class LoaderRowDisplay extends StatelessWidget {
  const LoaderRowDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SkeletonWidget(
          widget: Container(
            height: 15,
            width: 100,
            color: AppColor.greyColorF2,
          ),
        ),
        SkeletonWidget(
          widget: Container(
            height: 15,
            width: 100,
            color: AppColor.greyColorF2,
          ),
        ),

      ],
    );
  }
}
