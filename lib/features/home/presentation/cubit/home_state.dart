import 'package:tasssssk/features/home/data/models/explore_dishes_model.dart';
import 'package:tasssssk/features/home/data/models/resturant_model.dart';

abstract class HomeState {
  HomeState();
}

class HomeLoading extends HomeState {
  HomeLoading();
}

class HomeSuccess extends HomeState {
  List<ExploreDishesModel>? exploreDishesModel;
  List<RestaurantModel>? restaurantModel;

  HomeSuccess({this.exploreDishesModel, this.restaurantModel});
}

class HomeFailure extends HomeState {
  String errorMessge;

  HomeFailure(this.errorMessge);
}
