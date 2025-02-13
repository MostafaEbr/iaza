import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../colors/app_color.dart';
import '../../styles/app_fonts.dart';
import '../skeleton_widget.dart';

class SkeletonCardCategory extends StatelessWidget {
  const SkeletonCardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      ignoreContainers: true,
      child: SizedBox(
        height: context.screenHeight * 0.16,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",
                          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.appFamilyInter,
                              fontSize: 17,
                              color: AppColor.greyColorE20),
                ),
              ],
            ),
            SizedBox(height: 4,),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
                  itemBuilder: (context,index){
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Card(
                        margin: EdgeInsets.zero,
                        elevation: 0,
                        color: AppColor.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SkeletonWidget(
                              widget:  Container(
                                  height:60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all( Radius.circular(32)),
                                    color: AppColor.greyColorF2,
                                  )
                              ),
                            ),
                            SizedBox(height: 8,),
                            SkeletonWidget(
                              widget: Column(
                                children: [
                                  Container(
                                    height: 14,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all( Radius.circular(8)),
                                      color: AppColor.greyColorF2,
                                    ),
                                  ),
                                  SizedBox()
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return Container(
                      width: 0,
                    );
                  },
                  itemCount: 5
              ),
            )
          ],
        ),
      ),
    );


  }
}
