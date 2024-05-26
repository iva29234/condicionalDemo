// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyStruct extends BaseStruct {
  PropertyStruct({
    String? id,
    int? identifier,
    String? building,
    List<PropertyImageStruct>? image,
    int? listingPrice,
    int? vipPrice,
  })  : _id = id,
        _identifier = identifier,
        _building = building,
        _image = image,
        _listingPrice = listingPrice,
        _vipPrice = vipPrice;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "Identifier" field.
  int? _identifier;
  int get identifier => _identifier ?? 0;
  set identifier(int? val) => _identifier = val;
  void incrementIdentifier(int amount) => _identifier = identifier + amount;
  bool hasIdentifier() => _identifier != null;

  // "Building" field.
  String? _building;
  String get building => _building ?? '';
  set building(String? val) => _building = val;
  bool hasBuilding() => _building != null;

  // "Image" field.
  List<PropertyImageStruct>? _image;
  List<PropertyImageStruct> get image => _image ?? const [];
  set image(List<PropertyImageStruct>? val) => _image = val;
  void updateImage(Function(List<PropertyImageStruct>) updateFn) =>
      updateFn(_image ??= []);
  bool hasImage() => _image != null;

  // "ListingPrice" field.
  int? _listingPrice;
  int get listingPrice => _listingPrice ?? 0;
  set listingPrice(int? val) => _listingPrice = val;
  void incrementListingPrice(int amount) =>
      _listingPrice = listingPrice + amount;
  bool hasListingPrice() => _listingPrice != null;

  // "VipPrice" field.
  int? _vipPrice;
  int get vipPrice => _vipPrice ?? 0;
  set vipPrice(int? val) => _vipPrice = val;
  void incrementVipPrice(int amount) => _vipPrice = vipPrice + amount;
  bool hasVipPrice() => _vipPrice != null;

  static PropertyStruct fromMap(Map<String, dynamic> data) => PropertyStruct(
        id: data['id'] as String?,
        identifier: castToType<int>(data['Identifier']),
        building: data['Building'] as String?,
        image: getStructList(
          data['Image'],
          PropertyImageStruct.fromMap,
        ),
        listingPrice: castToType<int>(data['ListingPrice']),
        vipPrice: castToType<int>(data['VipPrice']),
      );

  static PropertyStruct? maybeFromMap(dynamic data) =>
      data is Map ? PropertyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'Identifier': _identifier,
        'Building': _building,
        'Image': _image?.map((e) => e.toMap()).toList(),
        'ListingPrice': _listingPrice,
        'VipPrice': _vipPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'Identifier': serializeParam(
          _identifier,
          ParamType.int,
        ),
        'Building': serializeParam(
          _building,
          ParamType.String,
        ),
        'Image': serializeParam(
          _image,
          ParamType.DataStruct,
          true,
        ),
        'ListingPrice': serializeParam(
          _listingPrice,
          ParamType.int,
        ),
        'VipPrice': serializeParam(
          _vipPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static PropertyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertyStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        identifier: deserializeParam(
          data['Identifier'],
          ParamType.int,
          false,
        ),
        building: deserializeParam(
          data['Building'],
          ParamType.String,
          false,
        ),
        image: deserializeStructParam<PropertyImageStruct>(
          data['Image'],
          ParamType.DataStruct,
          true,
          structBuilder: PropertyImageStruct.fromSerializableMap,
        ),
        listingPrice: deserializeParam(
          data['ListingPrice'],
          ParamType.int,
          false,
        ),
        vipPrice: deserializeParam(
          data['VipPrice'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PropertyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PropertyStruct &&
        id == other.id &&
        identifier == other.identifier &&
        building == other.building &&
        listEquality.equals(image, other.image) &&
        listingPrice == other.listingPrice &&
        vipPrice == other.vipPrice;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, identifier, building, image, listingPrice, vipPrice]);
}

PropertyStruct createPropertyStruct({
  String? id,
  int? identifier,
  String? building,
  int? listingPrice,
  int? vipPrice,
}) =>
    PropertyStruct(
      id: id,
      identifier: identifier,
      building: building,
      listingPrice: listingPrice,
      vipPrice: vipPrice,
    );
