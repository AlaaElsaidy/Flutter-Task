import 'package:flutter/material.dart';
import 'package:tasssssk/config/router/routes.dart';
import 'package:tasssssk/features/home/presentation/pages/home.dart';

class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefienedRoutes(),
        );
    }
  }
}

Widget unDefienedRoutes() {
  return Scaffold(
    appBar: AppBar(),
    body: const Center(child: Text("UnDefined Routes")),
  );
}
