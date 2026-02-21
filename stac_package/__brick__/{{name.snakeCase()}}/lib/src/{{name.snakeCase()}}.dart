import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part '{{name.snakeCase()}}.g.dart';

@JsonSerializable(includeIfNull: false)
class {{name.pascalCase()}} extends StacWidget {
  /// Creates a [{{name.pascalCase()}}] widget.
  const {{name.pascalCase()}}({
  });

  @override
  String get type => ;

  /// Creates a [{{name.pascalCase()}}] from a JSON map.
  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}FromJson(json);

  @override
  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ToJson(this);
}
