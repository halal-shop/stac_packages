import 'package:json_annotation/json_annotation.dart';
import 'package:stac_cached_network_image/src/stac_curves.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_cached_network_image.g.dart';

/// StacCachedNetworkImage is a [StacWidget] that allows rendering network images
/// with caching via [CachedNetworkImage].
///
/// Example JSON:
/// {
///   "type": "cachedNetworkImage",
///   "imageUrl": "https://example.com/image.png",
///   "width": 200,
///   "height": 200,
///   "fit": "cover"
/// }
@JsonSerializable(includeIfNull: false)
class StacCachedNetworkImage extends StacWidget {
  /// Creates a [StacCachedNetworkImage] widget.
  const StacCachedNetworkImage({
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.alignment,
    this.placeholder,
    this.errorWidget,
    this.color,
    this.colorBlendMode,
    this.matchTextDirection,
    this.httpHeaders,
    this.cacheKey,
    this.memCacheWidth,
    this.memCacheHeight,
    this.fadeInCurve,
    this.fadeOutCurve,
    this.fadeInDuration,
    this.fadeOutDuration,
    this.useOldImageOnUrlChange,
    this.scale,
    this.repeat,
    this.maxHeightDiskCache,
    this.maxWidthDiskCache,
    this.placeholderFadeInDuration,
  });

  /// The URL of the network image to load and cache.
  final String imageUrl;

  /// The width to use for the image.
  final double? width;

  /// The height to use for the image.
  final double? height;

  /// How the image should be inscribed into the box.
  final StacBoxFit? fit;

  /// How to align the image within its bounds.
  final StacAlignment? alignment;

  /// A Stac widget to display while the image is loading.
  final StacWidget? placeholder;

  /// A Stac widget to display when the image fails to load.
  final StacWidget? errorWidget;

  /// The color to apply to the image (color filter).
  final StacColor? color;

  /// The blend mode to use with the color filter.
  final StacBlendMode? colorBlendMode;

  /// Whether to paint the image in the direction of the `TextDirection`.
  final bool? matchTextDirection;

  /// HTTP headers to send with the request.
  final Map<String, String>? httpHeaders;

  /// Custom cache key for the image.
  final String? cacheKey;

  /// Memory cache width (for decoding at reduced size).
  final int? memCacheWidth;

  /// Memory cache height (for decoding at reduced size).
  final int? memCacheHeight;

  /// The curve to use when fading in the image.
  final StacCurve? fadeInCurve;

  /// The curve to use when fading out the image.
  final StacCurve? fadeOutCurve;

  /// The duration to use when fading in the image.
  final StacDuration? fadeInDuration;

  /// The duration to use when fading out the image.
  final StacDuration? fadeOutDuration;

  /// Whether to use the old image when the URL changes.
  final bool? useOldImageOnUrlChange;

  /// The scale to use for the image.
  final double? scale;

  /// The repeat mode for the image.
  final StacImageRepeat? repeat;

  /// The maximum height of the image in the disk cache.
  final int? maxHeightDiskCache;

  /// The maximum width of the image in the disk cache.
  final int? maxWidthDiskCache;

  /// The duration to use when fading in the placeholder image.
  final StacDuration? placeholderFadeInDuration;

  @override
  String get type => 'cachedNetworkImage';

  /// Creates a [StacCachedNetworkImage] from a JSON map.
  factory StacCachedNetworkImage.fromJson(Map<String, dynamic> json) =>
      _$StacCachedNetworkImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacCachedNetworkImageToJson(this);
}
