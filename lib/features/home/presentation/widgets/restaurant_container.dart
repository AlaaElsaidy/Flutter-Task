import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasssssk/core/extensions/theme_extension.dart';
import 'package:tasssssk/features/home/data/models/resturant_model.dart';

import '../../../../gen/assets.gen.dart';

class RestaurantContainer extends StatelessWidget {
  RestaurantContainer({super.key, required this.restaurant});

  RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      width: 156.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 156.w,
              height: 136.h,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.r),
                      topLeft: Radius.circular(10.r)),
                  child: Image(
                      image: AssetImage(restaurant.image), fit: BoxFit.cover))),
          SizedBox(
            height: 5.h,
          ),
          Text(
            restaurant.name,
            style:
                GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Pizza, Pasta",
            style:
                GoogleFonts.inter(fontSize: 8.sp, fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageIcon(
                AssetImage(Assets.png.star.path),
                size: 25.sp,
                color: context.design.gold,
              ),
              Text(
                restaurant.rating.toString(),
                style: GoogleFonts.inter(
                    fontSize: 10.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                "(100+)",
                style: GoogleFonts.inter(
                    fontSize: 10.sp, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
