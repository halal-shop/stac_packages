## 0.0.3

* Improved the docs

## 0.0.2

* Improved package documentation for better pub.dev score.
* Added a comprehensive example project.
* Refined `pubspec.yaml` with better description and repository URLs.
* Optimized JSON output by removing default/null values (reduced JSON size).
* Made `StacSvg` properties nullable with defaults handled at parse time.
* Improved `stac build` compatibility.

## 0.0.1

* Initial release of `stac_svg`.
* Support for multiple SVG source types: `asset`, `network`, and `string`.
* Comprehensive support for `flutter_svg` properties:
    * `src` (Source path or content)
    * `width` & `height`
    * `fit` (using `StacBoxFit`)
    * `alignment` (using `StacAlignment`)
    * `placeholder` (Stac widget for loading state)
    * `color` & `blendMode` (for `ColorFilter` support)
    * `matchTextDirection` & `allowDrawingOutsideViewBox`
    * `semanticsLabel` & `excludeFromSemantics`
* Integrated with `stac build` for Server-Driven UI generation.
* Professional documentation and examples in `README.md`.
