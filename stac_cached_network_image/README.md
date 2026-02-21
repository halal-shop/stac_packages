# stac_cached_network_image

[![Pub Version](https://img.shields.io/pub/v/stac_cached_network_image)](https://pub.dev/packages/stac_cached_network_image)
[![Pub Likes](https://img.shields.io/pub/likes/stac_cached_network_image)](https://pub.dev/packages/stac_cached_network_image)

A [Stac](https://pub.dev/packages/stac) WidgetParser to render network images with automatic caching using the [cached_network_image](https://pub.dev/packages/cached_network_image) package.

## Getting started

Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  stac_cached_network_image: ^0.0.1
```

or run this command:

```bash
flutter pub add stac_cached_network_image
```

## Usage

Import the package in your Dart file:

```dart
import 'package:stac_cached_network_image/stac_cached_network_image.dart';
```

Register the Widget Parser:

```dart
void main() async {
  await Stac.initialize(
    parsers: [
      StacCachedNetworkImageParser(),
    ],
  );
  runApp(const MyApp());
}
```

## JSON Examples

### Basic Usage
```json
{
  "type": "cachedNetworkImage",
  "imageUrl": "https://example.com/image.png"
}
```

### Advanced Usage
```json
{
  "type": "cachedNetworkImage",
  "imageUrl": "https://example.com/image.png",
  "width": 200,
  "height": 200,
  "fit": "cover",
  "placeholder": {
    "type": "circularProgressIndicator"
  },
  "errorWidget": {
    "type": "icon",
    "icon": "error",
    "color": "#FF0000"
  },
  "fadeInDuration": {
    "milliseconds": 300
  }
}
```

## Properties

| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `imageUrl` | `String` | **Required** | The URL of the network image to load and cache. |
| `width` | `double` | `null` | The width to use for the image. |
| `height` | `double` | `null` | The height to use for the image. |
| `fit` | `String` | `"contain"` | How the image should be inscribed into the box. |
| `alignment` | `String` | `"center"` | How to align the image within its bounds. |
| `placeholder` | `Map` | `null` | A Stac widget to display while the image is loading. |
| `errorWidget` | `Map` | `null` | A Stac widget to display when the image fails to load. |
| `color` | `String` | `null` | The color to apply to the image (color filter). |
| `colorBlendMode` | `String` | `null` | The blend mode to use with the color filter. |
| `matchTextDirection` | `bool` | `false` | Whether to paint the image in the direction of the `TextDirection`. |
| `httpHeaders` | `Map<String, String>` | `null` | HTTP headers to send with the request. |
| `cacheKey` | `String` | `null` | Custom cache key for the image. |
| `memCacheWidth` | `int` | `null` | Memory cache width (for decoding at reduced size). |
| `memCacheHeight` | `int` | `null` | Memory cache height (for decoding at reduced size). |
| `fadeInCurve` | `String` | `"easeIn"` | The curve to use when fading in the image. |
| `fadeOutCurve` | `String` | `"easeOut"` | The curve to use when fading out the image. |
| `fadeInDuration` | `Map` | `500ms` | The duration to use when fading in the image. |
| `fadeOutDuration` | `Map` | `1000ms` | The duration to use when fading out the image. |
| `useOldImageOnUrlChange` | `bool` | `false` | Whether to use the old image when the URL changes. |
| `scale` | `double` | `1.0` | The scale to use for the image. |
| `repeat` | `String` | `"noRepeat"` | The repeat mode for the image. |
| `maxHeightDiskCache` | `int` | `null` | The maximum height of the image in the disk cache. |
| `maxWidthDiskCache` | `int` | `null` | The maximum width of the image in the disk cache. |
| `placeholderFadeInDuration` | `Map` | `null` | The duration to use when fading in the placeholder image. |

---

Built with ❤️ by the Halal Shop Team.