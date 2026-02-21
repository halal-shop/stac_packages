import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stac/stac.dart';
import '{{name.snakeCase()}}.dart';

/// StacSvgParser is the [StacParser] implementation for [StacSvg].
/// It handles the creation of [SvgPicture] from the model properties.
class {{name.pascalCase()}}Parser extends StacParser<StacSvg> {
  @override
  String get type => ;

  @override
  {{name.pascalCase()}} getModel(Map<String, dynamic> json) => {{name.pascalCase()}}.fromJson(json);

  @override
  Widget parse(BuildContext context, {{name.pascalCase()}} model) {
    return SizedBox();  
  }
}
