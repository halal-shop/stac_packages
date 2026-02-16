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
