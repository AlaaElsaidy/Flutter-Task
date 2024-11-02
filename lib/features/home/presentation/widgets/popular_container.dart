import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasssssk/features/home/data/models/resturant_model.dart';

class PopularContainer extends StatelessWidget {
  PopularContainer({super.key, required this.restaurant});

  RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 129.h,
      width: 114.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 114.w,
              height: 88.h,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.access_time,
                size: 25.sp,
              ),
              Text(
                restaurant.deliveryTime,
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
