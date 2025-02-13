import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';
import 'package:investment/core/utils/loader/skeleton_widget.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';

class CardProductItemLoader extends StatelessWidget {

  const CardProductItemLoader({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: AppColor.greyColorE20,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: AppColor.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonWidget(
              widget: Container(
                height: context.screenHeight * 0.20,
                width: 180,
                decoration: BoxDecoration(
                  color: AppColor.greyColorF2,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
              ),
            ),

            SkeletonWidget(
              widget: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8).copyWith(bottom: 0),
                child: Text(
                 "productModel?.title ?? """,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFonts.appFamilyInter,
                      fontSize: 16,
                      color: AppColor.greyColorE20),
                  maxLines: 1,
                ),
              ),
            ),
            SkeletonWidget(
              widget: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8)
                    .copyWith(top: 4),
                child: Text(
                  "\$100",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontFamily: AppFonts.appFamilyInter,
                      fontSize: 16,
                      color: AppColor.greyColorE20),
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
