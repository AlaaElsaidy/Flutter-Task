import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasssssk/core/extensions/theme_extension.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: context.design.light,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r)),
            padding: EdgeInsets.all(30.r)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("free delivery, on us",
                    style: GoogleFonts.inter(
                        color: context.design.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600)),
                Text("a gift for your first order",
                    style: GoogleFonts.inter(
                        color: context.design.white,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500))
              ],
            ),
            Text(
              "Order now",
              style: GoogleFonts.inter(
                  color: context.design.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
