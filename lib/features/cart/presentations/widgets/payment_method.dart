import 'package:flutter/material.dart';

import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Text("Payment Method",style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.appFamilyInter,
              fontSize: 17,
              color: AppColor.greyColorE20),),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            decoration: BoxDecoration(
                color: AppColor.greyColorFA,
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cash on delivery",style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.appFamilyInter,
                    fontSize: 15,
                    color: AppColor.greyColorE20),),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.check,size: 18,color: AppColor.whiteColor,),
                )
              ],
            )
            ,
          )

        ]
      ),
    );
  }
}
