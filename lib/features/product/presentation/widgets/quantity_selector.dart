import 'package:flutter/material.dart';
import 'package:investment/core/extension/app_extensions.dart';

import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/styles/app_fonts.dart';

class QuantitySelector extends StatefulWidget {
  final int stock;
  final int initialQuantity;
  final Function(int) onQuantityChanged;

  const QuantitySelector({super.key,
    required this.stock,
    this.initialQuantity = 1,
    required this.onQuantityChanged,
  });

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int _selectedQuantity = 1;

  @override
  void initState() {
    super.initState();
    _selectedQuantity = widget.initialQuantity;
  }

  void _increaseQuantity() {
    if (_selectedQuantity < widget.stock) {
      setState(() {
        _selectedQuantity++;
        widget.onQuantityChanged(_selectedQuantity);
      });
    }
  }

  void _decreaseQuantity() {
    if (_selectedQuantity > 1) {
      setState(() {
        _selectedQuantity--;
        widget.onQuantityChanged(_selectedQuantity);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      isComplex: true,  // Marks the widget as complex
      painter: IncompleteBorderPainter(
        borderColor: AppColor.greyColorE20, // Use your color
        borderWidth: 1,
        dashWidth: 1,  // Length of dashes
        dashGap: 0.1,    // Gap between dashes
      ),
      child: Container(
        height: 38,
        padding: EdgeInsets.zero,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Decrease Quantity Button
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColor.greyColorE20,
                ),
              ),
              child: IconButton(
                iconSize: 18,
                padding: EdgeInsets.zero,
                onPressed: _decreaseQuantity,
                icon: Icon(Icons.remove,color: _selectedQuantity==1?AppColor.greyColorE20:AppColor.greyColorE20,),
              ),
            ),
            SizedBox(width: 12,),

            // Quantity Text
            Text(
              '$_selectedQuantity',
              style: context.textTheme.titleMedium!.copyWith(
                fontFamily: AppFonts.appFamilyInter,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColor.greyColorE20,
              ),
            ),
            SizedBox(width: 12,),

            // Increase Quantity Button
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColor.greyColor,
                ),
              ),
              child: IconButton(
                iconSize: 18,
                padding: EdgeInsets.zero,
                onPressed: _increaseQuantity,
                icon: Icon(Icons.add,
                    color: AppColor.greyColor
                ),
              ),
            ),
          ],
        ),
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
