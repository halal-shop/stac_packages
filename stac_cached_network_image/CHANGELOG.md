## 0.0.1

* Initial release of `stac_cached_network_image`.
* Full integration with the [cached_network_image](https://pub.dev/packages/cached_network_image) package.
* Support for advanced image caching and display properties:
    * `imageUrl` (The network source URL)
    * `width` & `height`
    * `fit` (using `StacBoxFit`)
    * `alignment` (using `StacAlignment`)
    * `placeholder` (Stac widget for loading state)
    * `errorWidget` (Stac widget for error state)
    * `color` & `colorBlendMode` (for `ColorFilter` support)
    * `memCacheWidth` & `memCacheHeight`
    * `fadeInDuration`, `fadeOutDuration`, & `placeholderFadeInDuration`
    * `fadeInCurve` & `fadeOutCurve` (comprehensive Curve support)
    * `cacheKey`, `maxWidthDiskCache`, & `maxHeightDiskCache`
    * `useOldImageOnUrlChange`, `scale`, & `repeat`
* Performance optimized for Server-Driven UI environments.
* Built with `stac` for seamless dynamic widget rendering.
