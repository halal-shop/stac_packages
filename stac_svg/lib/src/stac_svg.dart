import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_svg.g.dart';

enum StacSvgSourceType { asset, network, string }

/// StacSvg is a [StacWidget] that allows rendering SVG images.
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
@JsonSerializable(includeIfNull: false)
class StacSvg extends StacWidget {
  /// Creates a [StacSvg] widget.
  const StacSvg({
    required this.src,
    this.sourceType,
    this.width,
    this.height,
    this.fit,
    this.alignment,
    this.matchTextDirection,
    this.allowDrawingOutsideViewBox,
    this.placeholder,
    this.semanticsLabel,
    this.excludeFromSemantics,
    this.color,
    this.blendMode,
  });

  /// The source path or content of the SVG.
  final String src;

  /// The type of the SVG source (asset, network, or string).
  final StacSvgSourceType? sourceType;

  /// The width to use for the SVG.
  final double? width;

  /// The height to use for the SVG.
  final double? height;

  /// How the SVG should be inscribed into the box.
  final StacBoxFit? fit;

  /// How to align the SVG within its bounds.
  final StacAlignment? alignment;

  /// Whether to paint the SVG in the direction of the `TextDirection`.
  final bool? matchTextDirection;

  /// Whether to allow the SVG to draw outside its view box.
  final bool? allowDrawingOutsideViewBox;

  /// A Stac widget to display while the SVG is loading.
  final StacWidget? placeholder;

  /// The semantic label for the SVG.
  final String? semanticsLabel;

  /// Whether to exclude this SVG from semantics.
  final bool? excludeFromSemantics;

  /// The color to apply to the SVG (using `ColorFilter`).
  final StacColor? color;

  /// The blend mode to use with the color filter.
  final StacBlendMode? blendMode;

  @override
  String get type => 'svg';

  /// Creates a [StacSvg] from a JSON map.
  factory StacSvg.fromJson(Map<String, dynamic> json) =>
      _$StacSvgFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSvgToJson(this);
}
