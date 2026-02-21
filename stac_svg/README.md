# stac_svg

[![Pub Version](https://img.shields.io/pub/v/stac_svg)](https://pub.dev/packages/stac_svg)
[![Pub Likes](https://img.shields.io/pub/likes/stac_svg)](https://pub.dev/packages/stac_svg)

A [Stac](https://pub.dev/packages/stac) WidgetParser to render SVG images using the [flutter_svg](https://pub.dev/packages/flutter_svg) package.

## Getting started

Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  stac_svg: ^0.0.3
```

or run this command:

```bash
flutter pub add stac_svg
```

## Usage

Import the package in your Dart file:

```dart
import 'package:stac_svg/stac_svg.dart';
```

Register the Widget Parser:

```dart
void main() async {
  await Stac.initialize(
    parsers: [
      StacSvgWidgetParser(),
    ],
  );
  runApp(const MyApp());
}
```

## Svg Widget JSON

### Basic String SVG
```json
{
  "type": "svg",
  "src": "<svg ...>...</svg>",
  "sourceType": "string"
}
```

### Asset SVG
```json
{
  "type": "svg",
  "src": "assets/images/logo.svg",
  "sourceType": "asset",
  "width": 100,
  "height": 100
}
```

### Network SVG
```json
{
  "type": "svg",
  "src": "https://example.com/image.svg",
  "sourceType": "network",
  "placeholder": {
    "type": "circularProgressIndicator"
  }
}
```

## Svg Widget Properties

| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `src` | `String` | **Required** | The source of the SVG (URL, Asset Path, or String content). |
| `sourceType` | `String` | `"string"` | The type of source: `asset`, `network`, or `string`. |
| `width` | `double` | `null` | The width of the SVG. |
| `height` | `double` | `null` | The height of the SVG. |
| `fit` | `String` | `"contain"` | How the SVG should be inscribed into the box. |
| `alignment` | `String` | `"center"` | How to align the SVG within its bounds. |
| `matchTextDirection`| `bool` | `false` | Whether to paint the SVG in the direction of the `TextDirection`. |
| `allowDrawingOutsideViewBox` | `bool` | `false` | Whether to allow the SVG to draw outside its view box. |
| `placeholder` | `Map` | `null` | A Stac widget to display while the SVG is loading (mostly for network). |
| `semanticsLabel` | `String` | `null` | The semantic label for the SVG. |
| `excludeFromSemantics` | `bool` | `false` | Whether to exclude this SVG from semantics. |
| `color` | `String` | `null` | The color to apply to the SVG (using `ColorFilter`). |
| `blendMode` | `String` | `"srcIn"` | The blend mode to use with the color filter. |

---

Built with ❤️ by the Halal Shop Team.