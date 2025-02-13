import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';

import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/loader/skeleton_widget.dart';
import 'rich_details_loader.dart';

class LoaderPageProduct extends StatelessWidget {
  const LoaderPageProduct({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkeletonWidget(
          widget: Container(
              width: context.screenWidth,
              height: context.screenHeight * 0.35,
            color: AppColor.greyColorF2,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SkeletonWidget(
              widget: Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    color: AppColor.greyColorF2,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            ),

            SkeletonWidget(
              widget: Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    color: AppColor.greyColorF2,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 60,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemBuilder: (context, index) {
                return SkeletonWidget(
                  widget: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(8.0)),
                      color: AppColor.greyColorF2,
                    ),
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.all(Radius.circular(8.0)),
                      child: SizedBox(
                          height: 60,
                          width: 60,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16,
                );
              },
              itemCount: 5
          ),
        ),
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              SkeletonWidget(
                widget: Container(
                  height: 75,
                  width: context.screenWidth,
                  decoration: BoxDecoration(
                      color: AppColor.greyColorF2,
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  SkeletonWidget(
                    widget: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          color: AppColor.greyColorF2,
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),

      ],
    );  }
}
