import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_svg_widget.g.dart';

@JsonSerializable()
class StacSvgWidget extends StacWidget {
  const StacSvgWidget({required this.text, this.color, this.size, this.child});

  final String text;
  final StacColor? color;
  final double? size;
  final StacWidget? child;

  @override
  String get type => 'svg';

  factory StacSvgWidget.fromJson(Map<String, dynamic> json) =>
      _$StacSvgWidgetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSvgWidgetToJson(this);
}
