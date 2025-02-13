import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';

class RowDisplay extends StatelessWidget {
  final String header;
  final String description;
  const RowDisplay({super.key, required this.header, required this.description});

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
              color: AppColor.greyColor9E

          ),
        ),
        Text(
          description,
          style: context.textTheme.titleMedium!.copyWith(
              fontSize: 15,
              fontFamily: AppFonts.appFamilyInter,
              fontWeight: FontWeight.w500,
              color:AppColor.greyColorE20
          ),
        )

      ],
    );
  }
}
