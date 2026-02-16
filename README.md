# Stac Packages

A collection of community-contributed and extended widgets and actions for the [Stac](https://pub.dev/packages/stac) Server-Driven UI package for Flutter.

This repository hosts essential components that are not part of the Stac core but are frequently needed in real-world applications.

## Available Packages

| Package | Description | Version |
| :--- | :--- | :--- |
| [**stac_svg**](./stac_svg) | Renders SVG images using `flutter_svg`. | `0.0.1` |

## Getting Started

To use these packages in your Flutter project, add them as dependencies in your `pubspec.yaml`. Since these are currently hosted locally within this repo, you can use a path dependency:

```yaml
dependencies:
  stac_svg:
    path: ./stac_packages/stac_svg
```

### Registration

After adding the dependency, you must register the widget or action parsers with the `StacRegistry` before initializing Stac:

```dart
import 'package:stac/stac.dart';
import 'package:stac_svg/stac_svg.dart';

void main() {
  StacRegistry.instance.register(StacSvgWidgetParser());
  
  Stac.initialize();
  
  runApp(const MyApp());
}
```

## Contributing

We welcome contributions! If you have a custom Stac widget or action that you'd like to share, please feel free to open a Pull Request.

1. Create a new directory under `stac_packages/`.
2. Implement your Stac component.
3. Add it to the list in this README.
4. Ensure it follows the project's coding standards.

---

Built with ❤️ by the Halal Shop Team.
