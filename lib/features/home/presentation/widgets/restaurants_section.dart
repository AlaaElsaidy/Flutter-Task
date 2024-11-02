import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasssssk/features/home/data/models/resturant_model.dart';
import 'package:tasssssk/features/home/presentation/cubit/home_cubit.dart';
import 'package:tasssssk/features/home/presentation/cubit/home_state.dart';
import 'package:tasssssk/features/home/presentation/widgets/restaurant_container.dart';

class RestaurantsSection extends StatelessWidget {
  const RestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        if (state is HomeSuccess) {
          List<RestaurantModel> restaurants = state.restaurantModel!;
          return SizedBox(
            height: 205.h,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return RestaurantContainer(
                  restaurant: restaurants[index],
                );
              },
              itemCount: restaurants.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 8.w,
                );
              },
            ),
          );
        } else {
          return Text("data");
        }
      },
    );
  }
}
