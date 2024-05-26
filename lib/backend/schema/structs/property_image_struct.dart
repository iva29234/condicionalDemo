// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyImageStruct extends BaseStruct {
  PropertyImageStruct({
    String? url,
  }) : _url = url;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  static PropertyImageStruct fromMap(Map<String, dynamic> data) =>
      PropertyImageStruct(
        url: data['url'] as String?,
      );

  static PropertyImageStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertyImageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static PropertyImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertyImageStruct(
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PropertyImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyImageStruct && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([url]);
}

PropertyImageStruct createPropertyImageStruct({
  String? url,
}) =>
    PropertyImageStruct(
      url: url,
    );
