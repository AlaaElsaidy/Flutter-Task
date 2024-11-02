import 'package:get_it/get_it.dart';
import 'package:tasssssk/config/injector/base_injector.dart';
import 'package:tasssssk/features/home/data/repositories/home_repo_imp.dart';
import 'package:tasssssk/features/home/domain/repositories/home_repo.dart';
import 'package:tasssssk/features/home/domain/use_cases/explore_dishes_usecase.dart';
import 'package:tasssssk/features/home/domain/use_cases/resturant_usecase.dart';
import 'package:tasssssk/features/home/presentation/cubit/home_cubit.dart';

class HomeInjector extends InjectorBase {
  @override
  GetIt get getIt => GetIt.instance;

  @override
  Future<void> inject() async {
    getIt.registerLazySingleton<HomeRepo>(
      () => HomeRepoImp(),
    );

    getIt.registerLazySingleton(
      () => RestaurantUseCase(getIt()),
    );
    getIt.registerLazySingleton(
      () => ExploreDishesUseCase(getIt()),
    );
    getIt.registerFactory(() => HomeCubit(getIt(), getIt()));
  }
}
