// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_svg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSvg _$StacSvgFromJson(Map<String, dynamic> json) => StacSvg(
  src: json['src'] as String,
  sourceType: $enumDecodeNullable(
    _$StacSvgSourceTypeEnumMap,
    json['sourceType'],
  ),
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  fit: $enumDecodeNullable(_$StacBoxFitEnumMap, json['fit']),
  alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
  matchTextDirection: json['matchTextDirection'] as bool?,
  allowDrawingOutsideViewBox: json['allowDrawingOutsideViewBox'] as bool?,
  placeholder: json['placeholder'] == null
      ? null
      : StacWidget.fromJson(json['placeholder'] as Map<String, dynamic>),
  semanticsLabel: json['semanticsLabel'] as String?,
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
  color: json['color'] as String?,
  blendMode: $enumDecodeNullable(_$StacBlendModeEnumMap, json['blendMode']),
);

Map<String, dynamic> _$StacSvgToJson(StacSvg instance) => <String, dynamic>{
  'src': instance.src,
  'sourceType': _$StacSvgSourceTypeEnumMap[instance.sourceType],
  'width': instance.width,
  'height': instance.height,
  'fit': _$StacBoxFitEnumMap[instance.fit],
  'alignment': _$StacAlignmentEnumMap[instance.alignment],
  'matchTextDirection': instance.matchTextDirection,
  'allowDrawingOutsideViewBox': instance.allowDrawingOutsideViewBox,
  'placeholder': instance.placeholder,
  'semanticsLabel': instance.semanticsLabel,
  'excludeFromSemantics': instance.excludeFromSemantics,
  'color': instance.color,
  'blendMode': _$StacBlendModeEnumMap[instance.blendMode],
  'type': instance.type,
};

const _$StacSvgSourceTypeEnumMap = {
  StacSvgSourceType.asset: 'asset',
  StacSvgSourceType.network: 'network',
  StacSvgSourceType.string: 'string',
};

const _$StacBoxFitEnumMap = {
  StacBoxFit.fill: 'fill',
  StacBoxFit.contain: 'contain',
  StacBoxFit.cover: 'cover',
  StacBoxFit.fitWidth: 'fitWidth',
  StacBoxFit.fitHeight: 'fitHeight',
  StacBoxFit.none: 'none',
  StacBoxFit.scaleDown: 'scaleDown',
};

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
};

const _$StacBlendModeEnumMap = {
  StacBlendMode.clear: 'clear',
  StacBlendMode.src: 'src',
  StacBlendMode.dst: 'dst',
  StacBlendMode.srcOver: 'srcOver',
  StacBlendMode.dstOver: 'dstOver',
  StacBlendMode.srcIn: 'srcIn',
  StacBlendMode.dstIn: 'dstIn',
  StacBlendMode.srcOut: 'srcOut',
  StacBlendMode.dstOut: 'dstOut',
  StacBlendMode.srcATop: 'srcATop',
  StacBlendMode.dstATop: 'dstATop',
  StacBlendMode.xor: 'xor',
  StacBlendMode.plus: 'plus',
  StacBlendMode.modulate: 'modulate',
  StacBlendMode.screen: 'screen',
  StacBlendMode.overlay: 'overlay',
  StacBlendMode.darken: 'darken',
  StacBlendMode.lighten: 'lighten',
  StacBlendMode.colorDodge: 'colorDodge',
  StacBlendMode.colorBurn: 'colorBurn',
  StacBlendMode.hardLight: 'hardLight',
  StacBlendMode.softLight: 'softLight',
  StacBlendMode.difference: 'difference',
  StacBlendMode.exclusion: 'exclusion',
  StacBlendMode.multiply: 'multiply',
  StacBlendMode.hue: 'hue',
  StacBlendMode.saturation: 'saturation',
  StacBlendMode.color: 'color',
  StacBlendMode.luminosity: 'luminosity',
};
