import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';

class RowDisplayFree extends StatelessWidget {
  final String header;
  final String description;
  const RowDisplayFree({super.key, required this.header, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(header,
          style: context.textTheme.titleMedium!.copyWith(
              fontSize: 14,
              fontFamily: AppFonts.appFamilyInter,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryColor

          ),
        ),
        Text(
          "Free",
          style: context.textTheme.titleMedium!.copyWith(
              fontSize: 14,
              fontFamily: AppFonts.appFamilyInter,
              fontWeight: FontWeight.w600,
              color: AppColor.accentColor
          ),
        )
      ],
    );
  }
}
