
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:investment/config/router/routes_name.dart';
import 'package:investment/core/extension/app_extensions.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/images/app_svgs.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../../products/presentation/widgets/display_product.dart';
import '../../data/models/product_model.dart';
import '../manager/cubit.dart';
import '../manager/states.dart';
import '../widgets/loader_page_product.dart';
part '../widgets/product_details.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel productModel;

  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    context.read<ProductCubit>().fetchProductDetails(widget.productModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
        return state.whenOrNull(
          loading: () => ListView(children: [
                LoaderPageProduct(),
              ]),
              success: (ProductModel productModel) => DisplayProduct(productModel:productModel),
              loadingChangeSku: (ProductModel productModel) =>  DisplayProduct(productModel:productModel),
              successChangeSkuSelected: (ProductModel productModel) => DisplayProduct(productModel:productModel),
              loadingChangeQuantity: (ProductModel productModel) => DisplayProduct(productModel:productModel),
              successQuantitySelected: (ProductModel productModel) =>DisplayProduct(productModel:productModel),
            ) ??
            SizedBox();
      }),
    );
  }
}
