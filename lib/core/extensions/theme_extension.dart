import 'package:flutter/material.dart';

import '../theme/base_theme.dart';

extension ButcheryDesign on BuildContext {
  RestaurantThemeExtension get design =>
      Theme.of(this).extension<RestaurantThemeExtension>()!;
}
