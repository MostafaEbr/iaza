import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../../category/data/models/category_model/category_model.dart';

class CardCategory extends StatelessWidget {
  final CategoryModel categoryModel;
  const CardCategory({super.key,required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
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
            SizedBox(height: 8,),
            ClipRRect(
              borderRadius: BorderRadius.all( Radius.circular(32)),
              child: CachedNetworkImage(
                height:60,
                width: 60,
                fit: BoxFit.cover,
                imageUrl: categoryModel.image??"",
                errorWidget: (context, value, o) =>
                    Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: AppColor.greyColorF2,
                        shape: BoxShape.circle,
                      ),
                    ),
              ),
            ),
            SizedBox(height: 8,),
            FittedBox(
              child: Text("${categoryModel.name}",style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontFamily: AppFonts.appFamilyInter,
                  fontSize: 12,
                  color: AppColor.greyColor41
              ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
