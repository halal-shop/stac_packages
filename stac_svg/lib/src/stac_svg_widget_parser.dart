import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stac/stac.dart';
import 'stac_svg_widget.dart';

class StacSvgWidgetParser extends StacParser<StacSvgWidget> {
  @override
  String get type => 'svg';

  @override
  StacSvgWidget getModel(Map<String, dynamic> json) =>
      StacSvgWidget.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSvgWidget model) {
    return SvgPicture.string(
      model.text,
      colorFilter: model.color != null
          ? ColorFilter.mode(model.color!.toColor(context)!, BlendMode.srcIn)
          : null,
      width: model.size,
      height: model.size,
      fit: BoxFit.contain,
      placeholderBuilder: (context) =>
          Stac.fromJson(model.child?.toJson() ?? {}, context) ??
          const SizedBox.shrink(),
    );
  }
}
