// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? name,
    int? identifier,
    String? status,
  })  : _id = id,
        _name = name,
        _identifier = identifier,
        _status = status;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Identifier" field.
  int? _identifier;
  int get identifier => _identifier ?? 0;
  set identifier(int? val) => _identifier = val;
  void incrementIdentifier(int amount) => _identifier = identifier + amount;
  bool hasIdentifier() => _identifier != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        name: data['Name'] as String?,
        identifier: castToType<int>(data['Identifier']),
        status: data['Status'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'Name': _name,
        'Identifier': _identifier,
        'Status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Identifier': serializeParam(
          _identifier,
          ParamType.int,
        ),
        'Status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        identifier: deserializeParam(
          data['Identifier'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['Status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        name == other.name &&
        identifier == other.identifier &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, identifier, status]);
}

UserStruct createUserStruct({
  String? id,
  String? name,
  int? identifier,
  String? status,
}) =>
    UserStruct(
      id: id,
      name: name,
      identifier: identifier,
      status: status,
    );
