import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stac/stac.dart';
import 'stac_svg.dart';

/// StacSvgWidgetParser is the [StacParser] implementation for [StacSvg].
/// It handles the creation of [SvgPicture] from the model properties.
class StacSvgParser extends StacParser<StacSvg> {
  @override
  String get type => 'svg';

  @override
  StacSvg getModel(Map<String, dynamic> json) => StacSvg.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSvg model) {
    switch (model.sourceType) {
      case StacSvgSourceType.asset:
        return SvgPicture.asset(
          model.src,
          width: model.width,
          height: model.height,
          fit: model.fit.parse,
          alignment: model.alignment.parse,
          matchTextDirection: model.matchTextDirection,
          allowDrawingOutsideViewBox: model.allowDrawingOutsideViewBox,
          placeholderBuilder: model.placeholder != null
              ? (context) =>
                    Stac.fromJson(model.placeholder!.toJson(), context) ??
                    const SizedBox.shrink()
              : null,
          semanticsLabel: model.semanticsLabel,
          excludeFromSemantics: model.excludeFromSemantics,
          colorFilter: model.color != null
              ? ColorFilter.mode(
                  model.color!.toColor(context)!,
                  model.blendMode.parse,
                )
              : null,
        );
      case StacSvgSourceType.network:
        return SvgPicture.network(
          model.src,
          width: model.width,
          height: model.height,
          fit: model.fit.parse,
          alignment: model.alignment.parse,
          matchTextDirection: model.matchTextDirection,
          allowDrawingOutsideViewBox: model.allowDrawingOutsideViewBox,
          placeholderBuilder: model.placeholder != null
              ? (context) =>
                    Stac.fromJson(model.placeholder!.toJson(), context) ??
                    const SizedBox.shrink()
              : null,
          semanticsLabel: model.semanticsLabel,
          excludeFromSemantics: model.excludeFromSemantics,
          colorFilter: model.color != null
              ? ColorFilter.mode(
                  model.color!.toColor(context)!,
                  model.blendMode.parse,
                )
              : null,
        );
      case StacSvgSourceType.string:
        return SvgPicture.string(
          model.src,
          width: model.width,
          height: model.height,
          fit: model.fit.parse,
          alignment: model.alignment.parse,
          matchTextDirection: model.matchTextDirection,
          allowDrawingOutsideViewBox: model.allowDrawingOutsideViewBox,
          placeholderBuilder: model.placeholder != null
              ? (context) =>
                    Stac.fromJson(model.placeholder!.toJson(), context) ??
                    const SizedBox.shrink()
              : null,
          semanticsLabel: model.semanticsLabel,
          excludeFromSemantics: model.excludeFromSemantics,
          colorFilter: model.color != null
              ? ColorFilter.mode(
                  model.color!.toColor(context)!,
                  model.blendMode.parse,
                )
              : null,
        );
    }
  }
}
