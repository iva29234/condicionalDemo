// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserListStruct extends BaseStruct {
  UserListStruct({
    List<UserStruct>? records,
  }) : _records = records;

  // "records" field.
  List<UserStruct>? _records;
  List<UserStruct> get records => _records ?? const [];
  set records(List<UserStruct>? val) => _records = val;
  void updateRecords(Function(List<UserStruct>) updateFn) =>
      updateFn(_records ??= []);
  bool hasRecords() => _records != null;

  static UserListStruct fromMap(Map<String, dynamic> data) => UserListStruct(
        records: getStructList(
          data['records'],
          UserStruct.fromMap,
        ),
      );

  static UserListStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserListStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static UserListStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserListStruct(
        records: deserializeStructParam<UserStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserListStruct &&
        listEquality.equals(records, other.records);
  }

  @override
  int get hashCode => const ListEquality().hash([records]);
}

UserListStruct createUserListStruct() => UserListStruct();
