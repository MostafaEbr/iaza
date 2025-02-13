import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:investment/config/router/routes_name.dart';
import 'package:investment/core/extension/app_extensions.dart';
import 'package:investment/core/utils/images/app_svgs.dart';
import '../../../../core/local_storage/cache_helper.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../../../core/utils/widgets/buttons/text_button.dart';
import '../../domain/entities/cart_model.dart';
import '../../domain/entities/item/item_model.dart';
import '../../domain/entities/requests/request_entities.dart';
import '../manager/cubit.dart';
import '../manager/states.dart';
import '../widgets/checkout_section.dart';
import '../widgets/loading/loader_cart_page.dart';
import '../widgets/payment_method.dart';
import '../widgets/quantity_selector_cart.dart';
part '../widgets/cart_details.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    context.read<CartCubit>().fetchCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greyColorFE,
      appBar:!context.canPop()?PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(child: SizedBox()),
      ): PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: AppBar(
            backgroundColor: AppColor.greyColorFE,
            foregroundColor: AppColor.greyColorFE,
            automaticallyImplyLeading: false,
            leadingWidth: 85,
            leading: IconButton(
              iconSize: 18,
              style: IconButton.styleFrom(
                fixedSize: Size(40, 40), // Ensure button is circular
                minimumSize: Size(40, 40), // Ensure button is circular
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50), // Ensures a circular shape
                  side: BorderSide(color: AppColor.greyColorDE, width: 1), // Border
                ),
                backgroundColor: Colors.white, // Optional: Set a background color
              ),
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              onPressed: (){
                context.pop();
              },
              icon: Icon(Platform.isAndroid?Icons.arrow_back:Icons.arrow_back_ios_new_outlined,
                color: AppColor.greyColorE20,size:Platform.isIOS? 18:22),
            ),
            title: Text(
              "Cart",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: AppFonts.appFamilyInter,
                fontSize: 18,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SizedBox(
        width: context.screenWidth,
        child: BlocConsumer<CartCubit, CartState>(
            listener: (context, state) {
          state.whenOrNull(
              validation: (validation, cartModel,isBuyNow) {
            // AppSnackBar.snackBarError(context, validation.message ?? "");
          }, failure: (error, cartModel,isBuyNow) {
            // AppSnackBar.snackBarError(context, error.message ?? "");
          }
          );
        }, builder: (context, state) {
          return BlocBuilder<CartCubit, CartState>(
              builder: (context, stateCart) {
            return stateCart.maybeWhen(
                loading: () => LoaderPageCart(),
                loadAction: (cartModel, item) =>
                    CartDetails(cartModel: cartModel,item:item),
                successEmpty: (cartModel)=>Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                     "Cart is Empty"
                    ,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blackColor,
                      fontFamily: AppFonts.appFamilyInter
                    ),),
                    SizedBox(height: 16,),
                    SizedBox(
                      width: context.screenWidth*0.60,
                      child: Text(
                        "Add new product",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.blackColor,
                          fontFamily: AppFonts.appFamilyInter
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                success: (data) => CartDetails(cartModel: data),
                validation: (validation, cartModel,isBuyNow) => cartModel == null
                    ? SizedBox()
                    : CartDetails(cartModel: cartModel),
                failure: (validation, cartModel,isBuyNow) => cartModel == null
                    ? SizedBox()
                    : CartDetails(cartModel: cartModel),
                orElse: () => Container());
          });
        }),
      ),
    );
  }
}
