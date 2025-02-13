import 'package:flutter/material.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../domain/entities/meta/meta_model.dart';
import 'display_total.dart';
import 'row_display.dart';
import 'row_display_free.dart';

class CheckoutSection extends StatelessWidget {
  final MetaModel metaModel;
  const CheckoutSection({super.key, required this.metaModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 0,
        children: [
          Text("Order info",style: Theme.of(context).textTheme.displayMedium!.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.appFamilyInter,
          fontSize: 17,
          color: AppColor.greyColorE20),),
          SizedBox(height: 10,),
          RowDisplay(
            header: "Subtotal",
            description: "${metaModel.subtotal}",),
          SizedBox(height: 10,),
          metaModel.delivery_cost==0?RowDisplayFree(header:"Shipping cost",
            description: "${metaModel.delivery_cost}",):
          RowDisplay(header: "Shipping cost",
            description: "${metaModel.delivery_cost}",),
          SizedBox(height: 10,),

          RowDisplayTotal(header:  "Total",description: "${metaModel.total}",),

        ],
      ),
    );
  }
}
