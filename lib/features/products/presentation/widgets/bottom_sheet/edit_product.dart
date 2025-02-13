
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:investment/core/extension/app_extensions.dart';
import 'package:investment/core/extension/empty_space.dart';
import 'package:investment/features/product/data/models/product_model.dart';
import 'package:investment/features/product/presentation/manager/states.dart';
import 'package:investment/features/products/presentation/manager/cubit.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/colors/app_color.dart';
import '../../../../../core/utils/styles/app_fonts.dart';
import '../../../../../core/utils/styles/app_padding.dart';
import '../../../../../core/utils/widgets/buttons/text_button.dart';
import '../../../../../core/utils/widgets/field_input.dart';
import '../../../../product/presentation/manager/cubit.dart';

class EditProduct extends StatefulWidget {
  ProductModel productModel;
   EditProduct({super.key,required this.productModel});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  TextEditingController title = TextEditingController();
  TextEditingController price = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title.text=widget.productModel.title??"";
    price.text="${widget.productModel.price??""}";
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductCubit>(
      create: (BuildContext context) =>ProductCubit(),
      child: Container(
        height: MediaQuery.of(context).viewInsets.bottom>0?( MediaQuery.of(context).viewInsets.bottom+(context.screenHeight*0.30)):context.screenHeight*0.48,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: AppPaddings.PADDING_ALL,
                  child: Column(
                    children: [
                      Text(
                        'Edit product',
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontFamily: AppFonts.appFamilyInter,
                            fontSize: 17,
                            color: AppColor.greyColor27),
                      ),
                      12.height,
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Form(child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 0,
                          children: [
                            Text(
                              'Title',
                              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFonts.appFamilyInter,
                                  fontSize: 14,
                                  color: AppColor.greyColor42
                              ),
                            ),
                            SizedBox(height: 6,),
                            InputField(header: '', textEditingController: title,),
                            SizedBox(height: 12,),
                            Text(
                              'Price',
                              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFonts.appFamilyInter,
                                  fontSize: 14,
                                  color: AppColor.greyColor42
                              ),
                            ),
                            SizedBox(height: 6,),
                            InputField(header: '', textEditingController: price,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),

                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              MediaQuery.of(context).viewInsets.bottom>0?SizedBox(): SafeArea(
                  child: BlocConsumer<ProductCubit,ProductState>(
                    builder: (BuildContext context, ProductState state) {
                      return TextButtonCustom(
                        text: 'Update',
                        isLoading: state is Loading,
                        onTap: () {
                          ProductModel productModel =widget.productModel;
                          productModel=  productModel.copyWith(
                            title: title.text,
                            price: double.parse(price.text)
                          );
                          context.read<ProductCubit>().updateProduct(productModel);
                        },
                      );
                    },
                    listener: (BuildContext context, ProductState state) {
                      if(state is Success){
                        getIt<ProductsCubit>().updateProducts(state.productModel);
                        context.pop();
                      }
                    },),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showEditProductSheet(BuildContext context,{required ProductModel productModel}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return  EditProduct(productModel:productModel);
    },
  );
}
