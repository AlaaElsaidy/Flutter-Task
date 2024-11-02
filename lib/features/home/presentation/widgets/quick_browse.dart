import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasssssk/core/extensions/theme_extension.dart';
import 'package:tasssssk/features/home/data/models/quick_browse_model.dart';

class QuickBrowse extends StatelessWidget {
  QuickBrowse({super.key, required this.quickBrowseModel});

  QuickBrowseModel quickBrowseModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.h,
      width: 130.w,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
          color: context.design.lightHover.withOpacity(.1),
          borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(quickBrowseModel.icon)),
          SizedBox(
            height: 10.h,
          ),
          Text(
            quickBrowseModel.name,
            style:
                GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
