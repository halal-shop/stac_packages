import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import '../stac_cached_network_image.dart';

/// StacCachedNetworkImageParser is the [StacParser] implementation for [StacCachedNetworkImage].
/// It handles the creation of [CachedNetworkImage] from the model properties.
class StacCachedNetworkImageParser extends StacParser<StacCachedNetworkImage> {
  @override
  String get type => 'cachedNetworkImage';

  @override
  StacCachedNetworkImage getModel(Map<String, dynamic> json) =>
      StacCachedNetworkImage.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCachedNetworkImage model) {
    return CachedNetworkImage(
      imageUrl: model.imageUrl,
      width: model.width,
      height: model.height,
      fit: model.fit?.parse ?? BoxFit.contain,
      alignment: model.alignment?.parse ?? Alignment.center,
      placeholder: model.placeholder != null
          ? (context, url) =>
                Stac.fromJson(model.placeholder!.toJson(), context) ??
                const SizedBox.shrink()
          : null,
      errorWidget: model.errorWidget != null
          ? (context, url, error) =>
                Stac.fromJson(model.errorWidget!.toJson(), context) ??
                const SizedBox.shrink()
          : null,
      color: model.color?.toColor(context),
      colorBlendMode: model.colorBlendMode?.parse,
      matchTextDirection: model.matchTextDirection ?? false,
      httpHeaders: model.httpHeaders,
      cacheKey: model.cacheKey,
      memCacheWidth: model.memCacheWidth,
      memCacheHeight: model.memCacheHeight,
      fadeInCurve: model.fadeInCurve?._parse ?? Curves.easeIn,
      fadeOutCurve: model.fadeOutCurve?._parse ?? Curves.easeOut,
      fadeInDuration:
          model.fadeInDuration?.parse ?? const Duration(milliseconds: 500),
      fadeOutDuration:
          model.fadeOutDuration?.parse ?? const Duration(milliseconds: 1000),
      useOldImageOnUrlChange: model.useOldImageOnUrlChange ?? false,
      scale: model.scale ?? 1.0,
      repeat: model.repeat?.parse ?? ImageRepeat.noRepeat,
      maxHeightDiskCache: model.maxHeightDiskCache,
      maxWidthDiskCache: model.maxWidthDiskCache,
      placeholderFadeInDuration: model.placeholderFadeInDuration?.parse,
    );
  }
}

extension ParseStacCurve on StacCurve {
  Curve get _parse => switch (this) {
    StacCurve.linear => Curves.linear,
    StacCurve.ease => Curves.ease,
    StacCurve.easeIn => Curves.easeIn,
    StacCurve.easeOut => Curves.easeOut,
    StacCurve.easeInOut => Curves.easeInOut,
    StacCurve.bounceIn => Curves.bounceIn,
    StacCurve.bounceOut => Curves.bounceOut,
    StacCurve.bounceInOut => Curves.bounceInOut,
    StacCurve.elasticIn => Curves.elasticIn,
    StacCurve.elasticOut => Curves.elasticOut,
    StacCurve.elasticInOut => Curves.elasticInOut,
    StacCurve.fastLinearToSlowEaseIn => Curves.fastLinearToSlowEaseIn,
    StacCurve.fastOutSlowIn => Curves.fastOutSlowIn,
    StacCurve.slowMiddle => Curves.slowMiddle,
    StacCurve.decelerate => Curves.decelerate,
    StacCurve.fastEaseInToSlowEaseOut => Curves.fastEaseInToSlowEaseOut,
    StacCurve.easeInToLinear => Curves.easeInToLinear,
    StacCurve.easeInSine => Curves.easeInSine,
    StacCurve.easeInQuad => Curves.easeInQuad,
    StacCurve.easeInCubic => Curves.easeInCubic,
    StacCurve.easeInQuart => Curves.easeInQuart,
    StacCurve.easeInQuint => Curves.easeInQuint,
    StacCurve.easeInExpo => Curves.easeInExpo,
    StacCurve.easeInCirc => Curves.easeInCirc,
    StacCurve.easeInBack => Curves.easeInBack,
    StacCurve.linearToEaseOut => Curves.linearToEaseOut,
    StacCurve.easeOutSine => Curves.easeOutSine,
    StacCurve.easeOutQuad => Curves.easeOutQuad,
    StacCurve.easeOutCubic => Curves.easeOutCubic,
    StacCurve.easeOutQuart => Curves.easeOutQuart,
    StacCurve.easeOutQuint => Curves.easeOutQuint,
    StacCurve.easeOutExpo => Curves.easeOutExpo,
    StacCurve.easeOutCirc => Curves.easeOutCirc,
    StacCurve.easeOutBack => Curves.easeOutBack,
    StacCurve.easeInOutSine => Curves.easeInOutSine,
    StacCurve.easeInOutQuad => Curves.easeInOutQuad,
    StacCurve.easeInOutCubic => Curves.easeInOutCubic,
    StacCurve.easeInOutQuart => Curves.easeInOutQuart,
    StacCurve.easeInOutQuint => Curves.easeInOutQuint,
    StacCurve.easeInOutExpo => Curves.easeInOutExpo,
    StacCurve.easeInOutCirc => Curves.easeInOutCirc,
    StacCurve.easeInOutBack => Curves.easeInOutBack,
  };
}
