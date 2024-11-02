import 'package:tasssssk/features/home/domain/repositories/home_repo.dart';

import '../../data/models/resturant_model.dart';

class RestaurantUseCase {
  final HomeRepo homeRepo;

  RestaurantUseCase(this.homeRepo);

  Future<List<RestaurantModel>> call() => homeRepo.getRestaurants();
}
