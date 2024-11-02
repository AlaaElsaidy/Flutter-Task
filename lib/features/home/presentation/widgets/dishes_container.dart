import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasssssk/core/extensions/theme_extension.dart';
import 'package:tasssssk/features/home/data/models/explore_dishes_model.dart';

class DishesContainer extends StatelessWidget {
  ExploreDishesModel exploreDishesModel;

  DishesContainer({super.key, required this.exploreDishesModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82.w,
      width: 64.h,
      child: Column(
        children: [
          Container(
            width: 66.w,
            height: 66.h,
            decoration: BoxDecoration(
                color: context.design.light.withOpacity(.1),
                borderRadius: BorderRadius.circular(50.r)),
            child: Image(image: AssetImage(exploreDishesModel.icon)),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            exploreDishesModel.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: context.design.black,
                fontSize: 8.sp,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
    ;
  }
}
