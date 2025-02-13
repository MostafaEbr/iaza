import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:investment/core/extension/app_extensions.dart';

import '../../colors/app_color.dart';
import '../../images/app_svgs.dart';
import '../skeleton_widget.dart';


class SkeletonCardProduct extends StatelessWidget {
  const SkeletonCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        border: Border.all(color: AppColor.greyColor),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: AppColor.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SkeletonWidget(
                        widget: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(16),topLeft:Radius.circular(16) ),
                          child: Container(
                            height: context.screenHeight * 0.20,
                            width: 180,
                            color: AppColor.greyColorE20,
                          ),
                        ),
                      ),
                      // Positioned(
                      //   // top: 8,
                      //     top: 1,
                      //     right: 4,
                      //     child: SkeletonWidget(
                      //       widget: SvgPicture.asset(
                      //         // AppSvg.NOT_HEART,
                      //         AppSvg.HEART,
                      //         height: 40,
                      //         width: 30,//ACCENT_COLOR,GREY_COLOR_89
                      //         colorFilter: ColorFilter.mode(AppColor.greyColorE20, BlendMode.srcIn), // Replace with your desired color
                      //       ),
                      //     )),

                    ],
                  ),
                  SkeletonWidget(
                    widget: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8).copyWith(bottom: 0),
                      height: 14,
                      width: 120,
                      decoration: BoxDecoration(
                        color: AppColor.greyColorE20,
                        borderRadius: BorderRadius.all(Radius.circular(12) ),
                      ),

                    ),
                  ),
                  SkeletonWidget(
                    widget: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8).copyWith(top: 4),
                      height: 14,
                      width: 90,
                      decoration: BoxDecoration(
                        color: AppColor.greyColorE20,
                        borderRadius: BorderRadius.all(Radius.circular(12) ),
                      ),
                    ),
                  ),

                ],
              ),
              SkeletonWidget(
                widget: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8).copyWith(top: 4),
                  height: 14,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColor.greyColorE20,
                    borderRadius: BorderRadius.all(Radius.circular(12) ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
