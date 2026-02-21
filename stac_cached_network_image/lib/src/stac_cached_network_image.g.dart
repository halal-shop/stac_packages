// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_cached_network_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCachedNetworkImage _$StacCachedNetworkImageFromJson(
  Map<String, dynamic> json,
) => StacCachedNetworkImage(
  imageUrl: json['imageUrl'] as String,
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  fit: $enumDecodeNullable(_$StacBoxFitEnumMap, json['fit']),
  alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
  placeholder: json['placeholder'] == null
      ? null
      : StacWidget.fromJson(json['placeholder'] as Map<String, dynamic>),
  errorWidget: json['errorWidget'] == null
      ? null
      : StacWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
  color: json['color'] as String?,
  colorBlendMode: $enumDecodeNullable(
    _$StacBlendModeEnumMap,
    json['colorBlendMode'],
  ),
  matchTextDirection: json['matchTextDirection'] as bool?,
  httpHeaders: (json['httpHeaders'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  cacheKey: json['cacheKey'] as String?,
  memCacheWidth: (json['memCacheWidth'] as num?)?.toInt(),
  memCacheHeight: (json['memCacheHeight'] as num?)?.toInt(),
  fadeInCurve: $enumDecodeNullable(_$StacCurveEnumMap, json['fadeInCurve']),
  fadeOutCurve: $enumDecodeNullable(_$StacCurveEnumMap, json['fadeOutCurve']),
  fadeInDuration: json['fadeInDuration'] == null
      ? null
      : StacDuration.fromJson(json['fadeInDuration'] as Map<String, dynamic>),
  fadeOutDuration: json['fadeOutDuration'] == null
      ? null
      : StacDuration.fromJson(json['fadeOutDuration'] as Map<String, dynamic>),
  useOldImageOnUrlChange: json['useOldImageOnUrlChange'] as bool?,
  scale: (json['scale'] as num?)?.toDouble(),
  repeat: $enumDecodeNullable(_$StacImageRepeatEnumMap, json['repeat']),
  maxHeightDiskCache: (json['maxHeightDiskCache'] as num?)?.toInt(),
  maxWidthDiskCache: (json['maxWidthDiskCache'] as num?)?.toInt(),
  placeholderFadeInDuration: json['placeholderFadeInDuration'] == null
      ? null
      : StacDuration.fromJson(
          json['placeholderFadeInDuration'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StacCachedNetworkImageToJson(
  StacCachedNetworkImage instance,
) => <String, dynamic>{
  'imageUrl': instance.imageUrl,
  'width': ?instance.width,
  'height': ?instance.height,
  'fit': ?_$StacBoxFitEnumMap[instance.fit],
  'alignment': ?_$StacAlignmentEnumMap[instance.alignment],
  'placeholder': ?instance.placeholder,
  'errorWidget': ?instance.errorWidget,
  'color': ?instance.color,
  'colorBlendMode': ?_$StacBlendModeEnumMap[instance.colorBlendMode],
  'matchTextDirection': ?instance.matchTextDirection,
  'httpHeaders': ?instance.httpHeaders,
  'cacheKey': ?instance.cacheKey,
  'memCacheWidth': ?instance.memCacheWidth,
  'memCacheHeight': ?instance.memCacheHeight,
  'fadeInCurve': ?_$StacCurveEnumMap[instance.fadeInCurve],
  'fadeOutCurve': ?_$StacCurveEnumMap[instance.fadeOutCurve],
  'fadeInDuration': ?instance.fadeInDuration,
  'fadeOutDuration': ?instance.fadeOutDuration,
  'useOldImageOnUrlChange': ?instance.useOldImageOnUrlChange,
  'scale': ?instance.scale,
  'repeat': ?_$StacImageRepeatEnumMap[instance.repeat],
  'maxHeightDiskCache': ?instance.maxHeightDiskCache,
  'maxWidthDiskCache': ?instance.maxWidthDiskCache,
  'placeholderFadeInDuration': ?instance.placeholderFadeInDuration,
  'type': instance.type,
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

const _$StacCurveEnumMap = {
  StacCurve.linear: 'linear',
  StacCurve.ease: 'ease',
  StacCurve.easeIn: 'easeIn',
  StacCurve.easeOut: 'easeOut',
  StacCurve.easeInOut: 'easeInOut',
  StacCurve.bounceIn: 'bounceIn',
  StacCurve.bounceOut: 'bounceOut',
  StacCurve.bounceInOut: 'bounceInOut',
  StacCurve.elasticIn: 'elasticIn',
  StacCurve.elasticOut: 'elasticOut',
  StacCurve.elasticInOut: 'elasticInOut',
  StacCurve.fastLinearToSlowEaseIn: 'fastLinearToSlowEaseIn',
  StacCurve.fastOutSlowIn: 'fastOutSlowIn',
  StacCurve.slowMiddle: 'slowMiddle',
  StacCurve.decelerate: 'decelerate',
  StacCurve.fastEaseInToSlowEaseOut: 'fastEaseInToSlowEaseOut',
  StacCurve.easeInToLinear: 'easeInToLinear',
  StacCurve.easeInSine: 'easeInSine',
  StacCurve.easeInQuad: 'easeInQuad',
  StacCurve.easeInCubic: 'easeInCubic',
  StacCurve.easeInQuart: 'easeInQuart',
  StacCurve.easeInQuint: 'easeInQuint',
  StacCurve.easeInExpo: 'easeInExpo',
  StacCurve.easeInCirc: 'easeInCirc',
  StacCurve.easeInBack: 'easeInBack',
  StacCurve.linearToEaseOut: 'linearToEaseOut',
  StacCurve.easeOutSine: 'easeOutSine',
  StacCurve.easeOutQuad: 'easeOutQuad',
  StacCurve.easeOutCubic: 'easeOutCubic',
  StacCurve.easeOutQuart: 'easeOutQuart',
  StacCurve.easeOutQuint: 'easeOutQuint',
  StacCurve.easeOutExpo: 'easeOutExpo',
  StacCurve.easeOutCirc: 'easeOutCirc',
  StacCurve.easeOutBack: 'easeOutBack',
  StacCurve.easeInOutSine: 'easeInOutSine',
  StacCurve.easeInOutQuad: 'easeInOutQuad',
  StacCurve.easeInOutCubic: 'easeInOutCubic',
  StacCurve.easeInOutQuart: 'easeInOutQuart',
  StacCurve.easeInOutQuint: 'easeInOutQuint',
  StacCurve.easeInOutExpo: 'easeInOutExpo',
  StacCurve.easeInOutCirc: 'easeInOutCirc',
  StacCurve.easeInOutBack: 'easeInOutBack',
};

const _$StacImageRepeatEnumMap = {
  StacImageRepeat.repeat: 'repeat',
  StacImageRepeat.repeatX: 'repeatX',
  StacImageRepeat.repeatY: 'repeatY',
  StacImageRepeat.noRepeat: 'noRepeat',
};
