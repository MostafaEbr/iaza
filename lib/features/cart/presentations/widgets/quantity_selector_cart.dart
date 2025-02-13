import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';

import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/constant/constant.dart';
import '../../../../core/utils/styles/app_fonts.dart';

class QuantitySelectorCart extends StatelessWidget {
  final int initialQuantity;
  final bool isLoading;
  final void Function()? onPressedDecreaseQuantity;
  final void Function()? onPressedIncreaseQuantity;
  const QuantitySelectorCart({
    super.key,
    required this.initialQuantity ,
    required this.onPressedDecreaseQuantity,
    required this.onPressedIncreaseQuantity,
    this.isLoading=false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 18,
            style: IconButton.styleFrom(
              fixedSize: Size(28, 28), // Ensure button is circular
              minimumSize: Size(28, 28), // Ensure button is circular
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50), // Ensures a circular shape
                side: BorderSide(color: AppColor.greyColorDE, width: 1), // Border
              ),
              backgroundColor: Colors.white, // Optional: Set a background color
            ),
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            onPressed: onPressedDecreaseQuantity,
            icon: Icon(Icons.keyboard_arrow_down_rounded, color: AppColor.greyColorDE,size: 22,),
          ),
          SizedBox(width: 8,),
          // Quantity Text
          isLoading? SizedBox(
            height: 12,
            width: 12,
            child: CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(AppColor.primaryColor),
              strokeWidth: strokeWidthAction,
            ),
          ) :
          Text(
            '$initialQuantity',
            style: context.textTheme.titleMedium!.copyWith(
              fontFamily: AppFonts.appFamilyInter,
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: AppColor.greyColorE20,
            ),
          ),
          SizedBox(width: 8,),
          // Increase Quantity Button
          IconButton(
            style: IconButton.styleFrom(
              fixedSize: Size(28, 28), // Ensure button is circular
              minimumSize: Size(28, 28), // Ensure button is circular
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50), // Ensures a circular shape
                side: BorderSide(color: AppColor.greyColorDE, width: 1), // Border
              ),
              backgroundColor: Colors.white, // Optional: Set a background color
            ),
            iconSize: 16,
            visualDensity: VisualDensity.compact,  // Example usage of visualDensity
            padding: EdgeInsets.zero,
            onPressed: onPressedIncreaseQuantity,
            icon: Icon(Icons.keyboard_arrow_up_rounded,
              color: AppColor.greyColorDE,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}

class IncompleteBorderPainter extends CustomPainter {
  final Color borderColor;
  final double borderWidth;
  final double dashWidth;
  final double dashGap;

  IncompleteBorderPainter({
    required this.borderColor,
    this.borderWidth = 2.0,
    this.dashWidth = 5.0,
    this.dashGap = 0.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    // Draw top border
    _drawDashedLine(canvas, paint, Offset(0+21, 0), Offset(size.width-21, 0));

    // Draw bottom border
    _drawDashedLine(canvas, paint, Offset(0+21, size.height), Offset(size.width-21, size.height));
  }

  void _drawDashedLine(Canvas canvas, Paint paint, Offset start, Offset end) {
    double distance = (end - start).distance;
    double dashX = 0;

    while (dashX < distance) {
      final dashStart = Offset(
        start.dx + (dashX / distance) * (end.dx - start.dx),
        start.dy + (dashX / distance) * (end.dy - start.dy),
      );
      final dashEnd = Offset(
        start.dx + ((dashX + dashWidth) / distance) * (end.dx - start.dx),
        start.dy + ((dashX + dashWidth) / distance) * (end.dy - start.dy),
      );
      canvas.drawLine(dashStart, dashEnd, paint);
      dashX += dashWidth + dashGap;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
