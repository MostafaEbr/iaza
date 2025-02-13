import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:investment/core/utils/colors/app_color.dart';
import 'package:investment/core/utils/images/app_svgs.dart';
import '../../../../config/router/routes_name.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../../category/presentation/manager/cubit.dart';
import '../../domain/entities/request_product.dart';
import '../manager/cubit.dart';
import '../manager/states.dart';
import '../widgets/card_item_loader.dart';
import '../widgets/card_product_item.dart';
import '../widgets/section_categories.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key,});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    RequestProducts requestProducts = RequestProducts();
    context.read<ProductsCubit>().fetchProducts(requestProducts: requestProducts);
    context.read<CategoriesCubit>().getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: AppBar(
            surfaceTintColor: AppColor.backgroundColor,
            backgroundColor: AppColor.backgroundColor,
            title: SvgPicture.asset(AppSvg.logo),
            centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
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
                  backgroundColor: AppColor.greyColorF2,
                  fixedSize: Size(40,40),
                  minimumSize: Size(40,40),
                  maximumSize: Size(40,40),
                  shape: const CircleBorder(),
                ),
              ),
            )
          ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SectionCategories(),
              ),
              BlocBuilder<ProductsCubit, ProductsState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.0,
                          crossAxisSpacing: 16.0,
                          childAspectRatio: 0.69,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const CardProductItemLoader();
                        },
                      ),
                    );
                  }
                  if (state is Success) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Products",
                            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w500,
                                fontFamily: AppFonts.appFamilyInter,
                                fontSize: 17,
                                color: AppColor.greyColorE20),
                          ),
                          SizedBox(height: 16),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15.0,
                              crossAxisSpacing: 15.0,
                              childAspectRatio: 0.60,
                            ),
                            itemCount: state.productList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  context.pushNamed(
                                      RoutesName.productDetails,
                                      extra: state.productList[index]);
                                },
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                                child: CardProductItem(
                                  productModel: state.productList[index],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Center(
                      child: SizedBox(
                        child: Text("$state"),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}
