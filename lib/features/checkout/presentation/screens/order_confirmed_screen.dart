import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:investment/core/utils/images/app_svgs.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../../../core/utils/widgets/buttons/text_button.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.greyColorFE,
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height*0.15,),
            Column(
              children: [
                SvgPicture.asset(AppSvg.telephone),
                SizedBox(height: 30,),
                Text(
                  "Order Confirmed!",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColor.greyColorE20,
                      fontFamily: AppFonts.appFamilyInter
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Your order has been confirmed, we will send\n you confirmation email shortly.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColor.greyColor9E,
                      fontFamily: AppFonts.appFamilyInter
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SafeArea(
                child: TextButtonCustom(
                  text: 'Continue Shopping',
                  onTap: () {
                    context.pop();
                  },
                )
            ),

          ],
        ),
      ),
    );
  }
}