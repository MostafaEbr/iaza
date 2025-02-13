
part of '../screens/product_screen.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetails({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit,ProductState>(
      builder: (context,state) {
        ProductCubit productCubit = context.read<ProductCubit>();
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color:AppColor.greyColorF2,
              child: Stack(
                children: [
                  CachedNetworkImage(
                      width: context.screenWidth,
                      fit: BoxFit.contain,
                      height: context.screenHeight * 0.35,
                      imageUrl: productModel.images?.first ?? ""),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: IconButton(
                      onPressed: () {
                        context.pushNamed(RoutesName.cart);
                      },
                      icon: Transform.scale(
                        scale: 1.0,
                        child: SvgPicture.asset(
                          AppSvg.cart,
                          colorFilter: ColorFilter.mode(
                            AppColor.greyColor9E,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: AppColor.whiteColor,
                        fixedSize: Size(40,40),
                        minimumSize: Size(40,40),
                        maximumSize: Size(40,40),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Transform.scale(
                        scale: 1.0,
                        child: Icon(Platform.isIOS?Icons.arrow_back_ios_new_outlined:
                        Icons.arrow_back),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: AppColor.whiteColor,
                        fixedSize: Size(40,40),
                        minimumSize: Size(40,40),
                        maximumSize: Size(40,40),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.70,
                        child: Text(
                          productModel.category?.name??"",
                          style: context.textTheme.titleMedium!.copyWith(
                            fontFamily: AppFonts.appFamilyInter,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColor.greyColor9E,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.70,
                        child: Text(
                          "${productModel.title}",
                          style: context.textTheme.titleMedium!.copyWith(
                            fontFamily: AppFonts.appFamilyInter,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1.0,
                            color: AppColor.greyColorE20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child:  RichText(
                      text:  TextSpan(
                        text:"price\n",
                        style: context.textTheme.titleMedium!.copyWith(
                          fontFamily: AppFonts.appFamilyInter,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: AppColor.greyColor9E,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: productModel.displayPrice(),
                            style: context.textTheme.titleMedium!.copyWith(
                              fontFamily: AppFonts.appFamilyInter,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: AppColor.greyColorE20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 60,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(8.0)),
                        color: AppColor.greyColorE20,
                      ),
                      child: ClipRRect(
                        borderRadius:
                        BorderRadius.all(Radius.circular(8.0)),
                        child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            height: 60,
                            width: 60,
                            imageUrl: productModel.images![index] ?? ""),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 16,
                    );
                  },
                  itemCount: productModel.images!.length),
            ),
             Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: context.textTheme.titleMedium!.copyWith(
                      fontFamily: AppFonts.appFamilyInter,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColor.blackColor.withValues(alpha: 0.8),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${productModel.description}",
                    style: context.textTheme.titleMedium!.copyWith(
                      fontFamily: AppFonts.appFamilyInter,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      fontSize: 12,
                      color: AppColor.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),

          ],
        );
      }
    );
  }
}
