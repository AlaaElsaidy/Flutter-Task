import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasssssk/features/home/data/models/explore_dishes_model.dart';
import 'package:tasssssk/features/home/presentation/cubit/home_cubit.dart';
import 'package:tasssssk/features/home/presentation/widgets/dishes_container.dart';

import '../cubit/home_state.dart';

class ExploreDishes extends StatelessWidget {
  const ExploreDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        if (state is HomeSuccess) {
          List<ExploreDishesModel> exploreDishes =
              state.exploreDishesModel ?? [];
          return SizedBox(
            height: 100.h,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return DishesContainer(
                    exploreDishesModel: exploreDishes[index]);
              },
              itemCount: exploreDishes.length,
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
