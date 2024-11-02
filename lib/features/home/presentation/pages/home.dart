import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasssssk/features/home/data/models/quick_browse_model.dart';
import 'package:tasssssk/features/home/presentation/cubit/home_cubit.dart';
import 'package:tasssssk/features/home/presentation/widgets/explore_dishes.dart';
import 'package:tasssssk/features/home/presentation/widgets/header_section.dart';
import 'package:tasssssk/features/home/presentation/widgets/order_button.dart';
import 'package:tasssssk/features/home/presentation/widgets/popular_section.dart';
import 'package:tasssssk/features/home/presentation/widgets/quick_browse.dart';
import 'package:tasssssk/features/home/presentation/widgets/restaurants_section.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeCubit homeCubit;

  @override
  void initState() {
    homeCubit = GetIt.I<HomeCubit>();
    homeCubit.getHomeData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeCubit,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(230.h),
            child: const HeaderSection()),
        body: Padding(
          padding: EdgeInsets.all(16.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore Dishes",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const ExploreDishes(),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Quick Browse",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 80.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        List<QuickBrowseModel> quickBrowseModel =
                            QuickBrowseModel.onGenerate();
                        return QuickBrowse(
                          quickBrowseModel: quickBrowseModel[index],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 5.w,
                        );
                      },
                      itemCount: 3),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Restaurants you Know",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RestaurantsSection(),
                SizedBox(
                  height: 15.h,
                ),
                const OrderButton(),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Popular Today",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                PopularSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
