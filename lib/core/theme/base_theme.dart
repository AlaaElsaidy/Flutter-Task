import 'package:flutter/material.dart';

class RestaurantThemeExtension
    extends ThemeExtension<RestaurantThemeExtension> {
  final Color white;
  final Color black;
  final Color light;
  final Color lightHover;

  final Color gold;
  final Color hintText;

  const RestaurantThemeExtension({
    required this.white,
    required this.black,
    required this.light,
    required this.lightHover,
    required this.gold,
    required this.hintText,
  });

  @override
  ThemeExtension<RestaurantThemeExtension> copyWith(
      {Color? white,
      Color? black,
      Color? light,
      Color? lightHover,
      Color? lightActive,
      Color? gold,
      Color? hintText}) {
    return RestaurantThemeExtension(
      white: white ?? this.white,
      black: black ?? this.black,
      light: light ?? this.light,
      lightHover: lightHover ?? this.lightHover,
      gold: gold ?? this.gold,
      hintText: hintText ?? this.hintText,
    );
  }

  @override
  ThemeExtension<RestaurantThemeExtension> lerp(
      covariant ThemeExtension<RestaurantThemeExtension>? other, double t) {
    if (other is! RestaurantThemeExtension) return this;
    return RestaurantThemeExtension(
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      light: Color.lerp(light, other.light, t)!,
      lightHover: Color.lerp(lightHover, other.lightHover, t)!,
      gold: Color.lerp(gold, other.gold, t)!,
      hintText: Color.lerp(hintText, other.hintText, t)!,
    );
  }

  ThemeData get theme => ThemeData(
        extensions: {this},
        scaffoldBackgroundColor: white,
      );
}
