import 'package:bloc/bloc.dart';
import 'package:tasssssk/features/home/domain/use_cases/explore_dishes_usecase.dart';
import 'package:tasssssk/features/home/domain/use_cases/resturant_usecase.dart';
import 'package:tasssssk/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  ExploreDishesUseCase exploreDishesUseCase;
  RestaurantUseCase restaurantUseCase;

  HomeCubit(this.restaurantUseCase, this.exploreDishesUseCase)
      : super(HomeLoading());

  Future<void> getHomeData() async {
    try {
      var exploreDishes = await exploreDishesUseCase.call();
      var restaurant = await restaurantUseCase.call();
      emit(HomeSuccess(
          exploreDishesModel: exploreDishes, restaurantModel: restaurant));
    } catch (e) {
      HomeFailure("Loading Error");
    }
  }
}
