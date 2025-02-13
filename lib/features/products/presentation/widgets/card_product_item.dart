
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/images/app_svgs.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../../product/data/models/product_model.dart';
import 'bottom_sheet/edit_product.dart';

class CardProductItem extends StatelessWidget {
  final ProductModel? productModel;

  const CardProductItem({super.key, required this.productModel});

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
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 203,
                    width: 180,
                    decoration: BoxDecoration(
                      color: AppColor.greyColorF2,
                      borderRadius: BorderRadius.all(Radius.circular(15),),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15),),
                      child: CachedNetworkImage(
                          height: 203,
                          width: 180,
                          fit: BoxFit.contain,
                          imageUrl:productModel?.images?.first ?? "",
                          errorWidget: (context, value, o) =>Container()
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        showEditProductSheet(context,productModel:productModel!);
                      },
                      icon: Transform.scale(
                        scale: 1.3,
                        child: SvgPicture.asset(
                          AppSvg.edit,
                          colorFilter: ColorFilter.mode(
                            AppColor.greyColor9E,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: AppColor.greyColorF2,
                        fixedSize: Size(28,28),
                        minimumSize: Size(28,28),
                        maximumSize: Size(28,28),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ),

                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8).copyWith(bottom: 0),
                child: Text(
                  productModel?.title ?? "",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFonts.appFamilyInter,
                      fontSize: 11,
                      color: AppColor.greyColorE20),
                  maxLines: 2,
                ),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.symmetric(horizontal: 8,),
                child: Text(
                  productModel?.displayPrice()??"",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: AppFonts.appFamilyInter,
                      fontSize: 13,
                      color: AppColor.greyColorE20),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
