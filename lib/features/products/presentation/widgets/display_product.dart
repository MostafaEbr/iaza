
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:investment/core/extension/app_extensions.dart';
import 'package:investment/core/utils/colors/app_color.dart';
import 'package:investment/features/cart/domain/entities/item/item_model.dart';
import 'package:investment/features/product/data/models/product_model.dart';
import '../../../../core/local_storage/cache_helper.dart';
import '../../../../core/utils/widgets/buttons/text_button.dart';
import '../../../product/presentation/manager/cubit.dart';
import '../../../product/presentation/screens/product_screen.dart';

class DisplayProduct extends StatelessWidget {
  final ProductModel productModel;
  const DisplayProduct({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: context.screenHeight,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                ProductDetails(
                  productModel: productModel,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
            child: TextButtonCustom(
              text: 'Add to Cart',
              onTap: () {
                String? rawData = CacheHelper.getCartContent();
                List<ItemModel> items = [];
                if (rawData != null && rawData.isNotEmpty) {
                  List<dynamic> data = jsonDecode(rawData);
                  items = data.map((item) => ItemModel.fromJson(item)).toList();
                }
                bool productExists = items.any((item) => item.product?.id == productModel.id);
                if (productExists) {
                  items = items.map((item) {
                    if (item.product?.id == productModel.id) {
                      return item.copyWith(
                        product: productModel,
                        quantity:(item.quantity??1)+1,
                      );
                    }
                    return item;
                  }).toList();
                } else {
                  items.add(ItemModel(product: productModel, quantity: context.read<ProductCubit>().selectedQty));
                }
                CacheHelper.setCartContent(jsonEncode(items.map((e) => e.toJson()).toList()));

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Product added to cart successfully!',style: TextStyle(
                      color: AppColor.greyColor27,
                      fontSize: 14
                    ),),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating, // Makes it float above UI
                    backgroundColor: AppColor.greyColorFE, // Success color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                );

              },
            )
        ),
      ],
    );
  }
}
