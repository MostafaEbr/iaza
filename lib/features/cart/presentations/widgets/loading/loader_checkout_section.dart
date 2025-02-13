import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';

import '../../../../../core/utils/colors/app_color.dart';
import 'loader_display_total.dart';
import 'loader_row_display.dart';

class LoaderCheckoutSection extends StatelessWidget {
  const LoaderCheckoutSection({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 16,),
          LoaderRowDisplay(),
          SizedBox(height: 16,),
          LoaderRowDisplay(),
          SizedBox(height: 16,),
          CustomPaint(
            painter: DashedLinePainter(),
            size: Size(context.screenWidth, 16.0),
          ),
          LoaderDisplayTotal(),

        ],
      ),
    );
  }
}
class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 9, dashSpace = 5, startX = 0;
    final paint = Paint()
      ..color = AppColor.primaryColor.withValues(alpha: 0.8)
    ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}