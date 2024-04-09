// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PiedataStruct extends FFFirebaseStruct {
  PiedataStruct({
    String? category,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _category = category,
        _price = price,
        super(firestoreUtilData);

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static PiedataStruct fromMap(Map<String, dynamic> data) => PiedataStruct(
        category: data['Category'] as String?,
        price: castToType<double>(data['Price']),
      );

  static PiedataStruct? maybeFromMap(dynamic data) =>
      data is Map ? PiedataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Category': _category,
        'Price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Category': serializeParam(
          _category,
          ParamType.String,
        ),
        'Price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static PiedataStruct fromSerializableMap(Map<String, dynamic> data) =>
      PiedataStruct(
        category: deserializeParam(
          data['Category'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['Price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PiedataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PiedataStruct &&
        category == other.category &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([category, price]);
}

PiedataStruct createPiedataStruct({
  String? category,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PiedataStruct(
      category: category,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PiedataStruct? updatePiedataStruct(
  PiedataStruct? piedata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    piedata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPiedataStructData(
  Map<String, dynamic> firestoreData,
  PiedataStruct? piedata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (piedata == null) {
    return;
  }
  if (piedata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && piedata.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final piedataData = getPiedataFirestoreData(piedata, forFieldValue);
  final nestedData = piedataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = piedata.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPiedataFirestoreData(
  PiedataStruct? piedata, [
  bool forFieldValue = false,
]) {
  if (piedata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(piedata.toMap());

  // Add any Firestore field values
  piedata.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPiedataListFirestoreData(
  List<PiedataStruct>? piedatas,
) =>
    piedatas?.map((e) => getPiedataFirestoreData(e, true)).toList() ?? [];
