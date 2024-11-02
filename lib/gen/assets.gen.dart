/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/Star.png
  AssetGenImage get star => const AssetGenImage('assets/png/Star.png');

  /// File path: assets/png/TEST FLUTTER.zip
  String get testFlutter => 'assets/png/TEST FLUTTER.zip';

  /// File path: assets/png/bigStar.png
  AssetGenImage get bigStar => const AssetGenImage('assets/png/bigStar.png');

  /// File path: assets/png/chicken.png
  AssetGenImage get chicken => const AssetGenImage('assets/png/chicken.png');

  /// File path: assets/png/discount.png
  AssetGenImage get discount => const AssetGenImage('assets/png/discount.png');

  /// File path: assets/png/location .png
  AssetGenImage get location => const AssetGenImage('assets/png/location .png');

  /// File path: assets/png/pizza.png
  AssetGenImage get pizza => const AssetGenImage('assets/png/pizza.png');

  /// File path: assets/png/ramen.png
  AssetGenImage get ramen => const AssetGenImage('assets/png/ramen.png');

  /// File path: assets/png/salad.png
  AssetGenImage get salad => const AssetGenImage('assets/png/salad.png');

  /// File path: assets/png/spaghetti.png
  AssetGenImage get spaghetti =>
      const AssetGenImage('assets/png/spaghetti.png');

  /// File path: assets/png/sushi.png
  AssetGenImage get sushi => const AssetGenImage('assets/png/sushi.png');
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
