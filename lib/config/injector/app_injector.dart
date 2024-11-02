import 'package:tasssssk/features/home/injector/injector.dart';

class Injector {
  static final home = HomeInjector();

  static Future<void> inject() async {
    await home.inject();
  }
}
