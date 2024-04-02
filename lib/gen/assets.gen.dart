/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arroba.png
  AssetGenImage get arroba => const AssetGenImage('assets/icons/arroba.png');

  /// File path: assets/icons/docker.png
  AssetGenImage get docker => const AssetGenImage('assets/icons/docker.png');

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/github.png
  AssetGenImage get github => const AssetGenImage('assets/icons/github.png');

  /// File path: assets/icons/js.png
  AssetGenImage get js => const AssetGenImage('assets/icons/js.png');

  /// File path: assets/icons/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/icons/linkedin.png');

  /// File path: assets/icons/nodejs.png
  AssetGenImage get nodejs => const AssetGenImage('assets/icons/nodejs.png');

  /// File path: assets/icons/twitter.png
  AssetGenImage get twitter => const AssetGenImage('assets/icons/twitter.png');

  /// File path: assets/icons/typescript.png
  AssetGenImage get typescript =>
      const AssetGenImage('assets/icons/typescript.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        arroba,
        docker,
        facebook,
        github,
        js,
        linkedin,
        nodejs,
        twitter,
        typescript
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.jpeg
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [avatar];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
