import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_svg.g.dart';

enum StacSvgSourceType { asset, network, string }

/// StacSvgWidget is a [StacWidget] that allows rendering SVG images.
/// It supports various source types: asset, network, and raw SVG string.
///
/// Example JSON:
/// {
///   "type": "svg",
///   "src": "<svg ...>...</svg>",
///   "sourceType": "string",
///   "width": 100,
///   "height": 100,
///   "color": "#FF0000"
/// }
@JsonSerializable()
class StacSvg extends StacWidget {
  const StacSvg({
    required this.src,
    this.sourceType = StacSvgSourceType.string,
    this.width,
    this.height,
    this.fit = StacBoxFit.contain,
    this.alignment = StacAlignment.center,
    this.matchTextDirection = false,
    this.allowDrawingOutsideViewBox = false,
    this.placeholder,
    this.semanticsLabel,
    this.excludeFromSemantics = false,
    this.color,
    this.blendMode = StacBlendMode.srcIn,
  });

  final String src;
  final StacSvgSourceType sourceType;
  final double? width;
  final double? height;
  final StacBoxFit fit;
  final StacAlignment alignment;
  final bool matchTextDirection;
  final bool allowDrawingOutsideViewBox;
  final StacWidget? placeholder;
  final String? semanticsLabel;
  final bool excludeFromSemantics;
  final StacColor? color;
  final StacBlendMode blendMode;

  @override
  String get type => 'svg';

  factory StacSvg.fromJson(Map<String, dynamic> json) =>
      _$StacSvgFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSvgToJson(this);
}
