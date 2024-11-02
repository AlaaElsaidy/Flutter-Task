import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasssssk/config/router/router.dart';

import 'config/injector/app_injector.dart';
import 'core/theme/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.inject();
  runApp(const MyApp());
}

class ItemDetailsInjector {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: RestaurantLightThemeExtension().theme,
        themeMode: ThemeMode.light,
        onGenerateRoute: (settings) => AppRouter.onGenerate(settings),
      ),
    );
  }
}
