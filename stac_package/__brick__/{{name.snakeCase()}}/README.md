# {{name.snakeCase()}}

[![Pub Version](https://img.shields.io/pub/v/{{name.snakeCase()}})](https://pub.dev/packages/{{name.snakeCase()}})
[![Pub Likes](https://img.shields.io/pub/likes/{{name.snakeCase()}})](https://pub.dev/packages/{{name.snakeCase()}})

A [Stac](https://pub.dev/packages/stac) WidgetParser to render {{name.snakeCase()}}.

## Getting started

run this command:

```bash
flutter pub add {{name.snakeCase()}}
```

## Usage

Import the package in your Dart file:

```dart
import 'package:{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
```

Register the Widget Parser:

```dart
void main() async {
  await Stac.initialize(
    parsers: [
      {{name.pascalCase()}}(),
    ],
  );
  runApp(const MyApp());
}
```

## Widget JSON

## Svg Widget Properties

| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |


Built with ❤️ by the Halal Shop Team.