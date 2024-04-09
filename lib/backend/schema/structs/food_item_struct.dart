// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodItemStruct extends FFFirebaseStruct {
  FoodItemStruct({
    String? img,
    String? name,
    String? category,
    String? description,
    DateTime? expiry,
    double? quantity,
    bool? donated,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _img = img,
        _name = name,
        _category = category,
        _description = description,
        _expiry = expiry,
        _quantity = quantity,
        _donated = donated,
        _price = price,
        super(firestoreUtilData);

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "expiry" field.
  DateTime? _expiry;
  DateTime? get expiry => _expiry;
  set expiry(DateTime? val) => _expiry = val;
  bool hasExpiry() => _expiry != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;
  void incrementQuantity(double amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "donated" field.
  bool? _donated;
  bool get donated => _donated ?? false;
  set donated(bool? val) => _donated = val;
  bool hasDonated() => _donated != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static FoodItemStruct fromMap(Map<String, dynamic> data) => FoodItemStruct(
        img: data['img'] as String?,
        name: data['name'] as String?,
        category: data['category'] as String?,
        description: data['description'] as String?,
        expiry: data['expiry'] as DateTime?,
        quantity: castToType<double>(data['quantity']),
        donated: data['donated'] as bool?,
        price: castToType<double>(data['price']),
      );

  static FoodItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? FoodItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'img': _img,
        'name': _name,
        'category': _category,
        'description': _description,
        'expiry': _expiry,
        'quantity': _quantity,
        'donated': _donated,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'expiry': serializeParam(
          _expiry,
          ParamType.DateTime,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.double,
        ),
        'donated': serializeParam(
          _donated,
          ParamType.bool,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static FoodItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodItemStruct(
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        expiry: deserializeParam(
          data['expiry'],
          ParamType.DateTime,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.double,
          false,
        ),
        donated: deserializeParam(
          data['donated'],
          ParamType.bool,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FoodItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodItemStruct &&
        img == other.img &&
        name == other.name &&
        category == other.category &&
        description == other.description &&
        expiry == other.expiry &&
        quantity == other.quantity &&
        donated == other.donated &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [img, name, category, description, expiry, quantity, donated, price]);
}

FoodItemStruct createFoodItemStruct({
  String? img,
  String? name,
  String? category,
  String? description,
  DateTime? expiry,
  double? quantity,
  bool? donated,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FoodItemStruct(
      img: img,
      name: name,
      category: category,
      description: description,
      expiry: expiry,
      quantity: quantity,
      donated: donated,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FoodItemStruct? updateFoodItemStruct(
  FoodItemStruct? foodItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    foodItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFoodItemStructData(
  Map<String, dynamic> firestoreData,
  FoodItemStruct? foodItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (foodItem == null) {
    return;
  }
  if (foodItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && foodItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final foodItemData = getFoodItemFirestoreData(foodItem, forFieldValue);
  final nestedData = foodItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = foodItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFoodItemFirestoreData(
  FoodItemStruct? foodItem, [
  bool forFieldValue = false,
]) {
  if (foodItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(foodItem.toMap());

  // Add any Firestore field values
  foodItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFoodItemListFirestoreData(
  List<FoodItemStruct>? foodItems,
) =>
    foodItems?.map((e) => getFoodItemFirestoreData(e, true)).toList() ?? [];
