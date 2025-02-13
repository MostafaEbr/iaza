
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:investment/core/utils/styles/app_fonts.dart';

import '../../colors/app_color.dart';

class TextButtonCustom extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool isLoading;
  const TextButtonCustom({super.key, required this.text, required this.onTap, this.isLoading=false});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        minimumSize: Size(MediaQuery.sizeOf(context).width, 68),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // No rounded corners, like a container
        ),
      ),
      onPressed:isLoading?null:onTap,
      child:isLoading?SizedBox(
        height: 44,
        child: SpinKitCircle(
          color: AppColor.whiteColor,
        ),
      ):Text(
        text,
        style: TextStyle(color: Colors.white,
        fontFamily: AppFonts.appFamilyInter,
          fontSize: 17,
          fontWeight: FontWeight.w500
        ), // Ensure text is visible
      ),
    );
  }
}
