import 'package:flutter/material.dart';

import 'base_theme.dart';

class RestaurantLightThemeExtension extends RestaurantThemeExtension {
  RestaurantLightThemeExtension()
      : super(
          white: const Color(0xFFFFFFFF),
          black: const Color(0xFF000000),
          light: const Color(0xff067B96),
          lightHover: const Color(0xffF44336),
          hintText: const Color(0xff757575),
          gold: const Color(0xffFFC207),
        );
}
