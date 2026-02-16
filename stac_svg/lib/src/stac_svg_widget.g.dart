// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_svg_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSvgWidget _$StacSvgWidgetFromJson(Map<String, dynamic> json) =>
    StacSvgWidget(
      text: json['text'] as String,
      color: json['color'] as String?,
      size: (json['size'] as num?)?.toDouble(),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacSvgWidgetToJson(StacSvgWidget instance) =>
    <String, dynamic>{
      'text': instance.text,
      'color': instance.color,
      'size': instance.size,
      'child': instance.child,
      'type': instance.type,
    };
