import 'package:tasssssk/features/home/data/models/explore_dishes_model.dart';
import 'package:tasssssk/features/home/data/models/resturant_model.dart';
import 'package:tasssssk/features/home/domain/repositories/home_repo.dart';

import '../../../../gen/assets.gen.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<List<ExploreDishesModel>> getDishes() async {
    return [
      ExploreDishesModel(id: 1, name: 'Noodles', icon: Assets.png.ramen.path),
      ExploreDishesModel(
          id: 2, name: 'grilled chicken', icon: Assets.png.chicken.path),
      ExploreDishesModel(id: 3, name: 'Pasta', icon: Assets.png.spaghetti.path),
      ExploreDishesModel(id: 4, name: 'Sushi', icon: Assets.png.sushi.path),
      ExploreDishesModel(id: 5, name: 'Salads', icon: Assets.png.salad.path),
    ];
  }

  @override
  Future<List<RestaurantModel>> getRestaurants() async {
    return [
      RestaurantModel(
          id: 1,
          name: 'Pizza King',
          rating: 4.5,
          image: Assets.png.pizza.path,
          deliveryTime: '30 mins'),
      RestaurantModel(
          id: 2,
          name: 'Pizza King',
          rating: 4.5,
          image: Assets.png.pizza.path,
          deliveryTime: '30 mins'),
      RestaurantModel(
          id: 3,
          name: 'Pizza King',
          rating: 4.5,
          image: Assets.png.pizza.path,
          deliveryTime: '30 mins'),
      RestaurantModel(
          id: 4,
          name: 'Pizza King',
          rating: 4.5,
          image: Assets.png.pizza.path,
          deliveryTime: '30 mins'),
    ];
  }
}
