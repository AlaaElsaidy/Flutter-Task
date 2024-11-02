import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasssssk/core/extensions/theme_extension.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
      height: 230.h,
      color: context.design.light.withOpacity(.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliverd to",
            style: GoogleFonts.inter(
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: context.design.black),
          ),
          Row(
            children: [
              Text(
                "6th of october, giza",
                style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: context.design.black),
              ),
              const Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Hello There!",
            style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: context.design.black),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "log in or create an account for a\n faster ordering experience.",
            style: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: context.design.black),
          ),
          SizedBox(
            height: 15.h,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
                  backgroundColor: context.design.light,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r))),
              onPressed: () {},
              child: Text(
                "SignUp",
                style: GoogleFonts.inter(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: context.design.white),
              ))
        ],
      ),
    );
  }
}
