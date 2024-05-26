// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesListStruct extends BaseStruct {
  PropertiesListStruct({
    List<PropertyStruct>? records,
  }) : _records = records;

  // "records" field.
  List<PropertyStruct>? _records;
  List<PropertyStruct> get records => _records ?? const [];
  set records(List<PropertyStruct>? val) => _records = val;
  void updateRecords(Function(List<PropertyStruct>) updateFn) =>
      updateFn(_records ??= []);
  bool hasRecords() => _records != null;

  static PropertiesListStruct fromMap(Map<String, dynamic> data) =>
      PropertiesListStruct(
        records: getStructList(
          data['records'],
          PropertyStruct.fromMap,
        ),
      );

  static PropertiesListStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertiesListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'records': _records?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PropertiesListStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertiesListStruct(
        records: deserializeStructParam<PropertyStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: PropertyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PropertiesListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PropertiesListStruct &&
        listEquality.equals(records, other.records);
  }

  @override
  int get hashCode => const ListEquality().hash([records]);
}

PropertiesListStruct createPropertiesListStruct() => PropertiesListStruct();
