import 'package:tasssssk/features/home/domain/repositories/home_repo.dart';

import '../../data/models/explore_dishes_model.dart';

class ExploreDishesUseCase {
  final HomeRepo homeRepo;

  ExploreDishesUseCase(this.homeRepo);

  Future<List<ExploreDishesModel>> call() => homeRepo.getDishes();
}
