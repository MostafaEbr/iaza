import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';

import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';

class RichTextDetails extends StatelessWidget {
  final String header;
  final String description;

  const RichTextDetails({super.key, required this.header, required this.description});

  @override
  Widget build(BuildContext context) {
    return  RichText(
      text:  TextSpan(
        text: header,
        style: context.textTheme.titleMedium!.copyWith(
          fontFamily: AppFonts.appFamilyInter,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: AppColor.greyColorE20,
        ),
        children: <TextSpan>[
           TextSpan(
            text:" $description",
            style: context.textTheme.titleMedium!.copyWith(
              fontFamily: AppFonts.appFamilyInter,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColor.greyColorE20,
            ),
          ),
        ],
      ),
    );
  }
}
