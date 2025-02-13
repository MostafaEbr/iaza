import 'package:flutter/material.dart';

import '../colors/app_color.dart';
import '../styles/app_fonts.dart';

class AppLoader{
  AppLoader._();
  static makeLoaderCircle(){
    return Container(
        width: 48,
        height: 48,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppColor.greyColorF2,
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 3,
        ));
  }
  static makeCircle(){
    return Container(
      width: 20,
      height: 20,
      padding: EdgeInsets.all(1),
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 1.6,
        valueColor: AlwaysStoppedAnimation<Color>(AppColor.greyColorF2), // Change to your desired color
      ),
    );
  }
  static makeLoaderCircleWithoutBackground(){
    return Container(
        width: 48,
        height: 48,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 3,
        ));
  }

  static makeLoaderCircleWithText(context){
    return Container(
      width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color:AppColor.greyColorF2,
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height/4,),
            CircularProgressIndicator.adaptive(
              strokeWidth: 3,
            ),
            SizedBox(height: 16,),
            Text("Loading...",style: TextStyle(
              fontFamily: AppFonts.appFamilyInter,
              fontWeight:FontWeight.w500
            ),)
          ],
        ));
  }
  static makeLoaderCircleWith(context){
    return Center(
      child: Container(
          width: 120,
          height: 120,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color:AppColor.greyColorF2,
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator.adaptive(
                strokeWidth: 3,
              ),
              SizedBox(height: 16,),
              Text("Loading...",style: TextStyle(
                  fontFamily: AppFonts.appFamilyInter,
                  fontWeight:FontWeight.w500
              ),)
            ],
          )),
    );
  }
}