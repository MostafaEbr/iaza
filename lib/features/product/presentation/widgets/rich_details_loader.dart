import 'package:flutter/material.dart';

import '../../../../core/utils/colors/app_color.dart';

class RichDetailsLoader extends StatelessWidget {

  const RichDetailsLoader({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 80,
          decoration: BoxDecoration(
              color: AppColor.greyColorF2,
              borderRadius: BorderRadius.all(Radius.circular(4))
          ),
        ),
        Text(" : "),
        Container(
          height: 20,
          width: 80,
          decoration: BoxDecoration(
              color: AppColor.greyColorF2,
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
        ),

      ],
    );
  }
}
