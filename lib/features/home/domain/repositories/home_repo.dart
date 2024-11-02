import 'package:tasssssk/features/home/data/models/explore_dishes_model.dart';
import 'package:tasssssk/features/home/data/models/resturant_model.dart';

abstract class HomeRepo {
  Future<List<ExploreDishesModel>> getDishes();

  Future<List<RestaurantModel>> getRestaurants();
}
